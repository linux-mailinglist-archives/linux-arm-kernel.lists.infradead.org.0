Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 311C4121A3F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 20:56:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZLA5FxJ9eUKDioDgfE2Arb2VkysjC+YhbyjsJpxJeM=; b=nz7Oq0ZvVHz74R
	tLxwVPLX0+UnhupSfawx7tPN3gVKjCDlsVWF/wwWLBVAgW7mDk+j0kGsDzDvUp0usPA6r2nNekHoO
	BLJOEut5mdHVp+2rlz3/QoRtxwhnG6xygPJqtoXwKgxjGZFngP3BIAkfQlpQCc1gdYnD3wvY7VBhm
	1pKnDOMd3EJZvTdHuNLgjEVDVlAFNgqWi7duAj+/pb0rFDEeybmwohIjhlGmqUPbK5NWWOXxaWR0N
	5RqCjGzovSwTb3w2b06JjthevsAI5yGWzTsVhG41WVr0W++6R+qNyJ4+4dIQINZib7DPdAvl+lwgF
	lx8aALxkNd+LL5Tgfpbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igwTk-0001KA-1t; Mon, 16 Dec 2019 19:56:28 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igwTb-0001Jb-9W
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 19:56:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1576526174;
 bh=CNL4/ITrQyawW6Jwa7ZAkK9ujkdNN6N4djNXPY/LFy8=;
 h=X-UI-Sender-Class:Subject:To:References:From:Cc:Date:In-Reply-To;
 b=h/o52mFMz6z4L2EVFIDt/pu0uYfDVMCrkIKvPvLzm0h0VP0vvOyqWLK4KW3o6mEBS
 ZJf9sGo1WU3uvvIepLMCQIVbdOSi7ReR+1hMXnuoJzJwfQM3QyRFiOGVIiCvLpvZue
 s1EFwHFD7jvH4Tmk1u8nQFK2l47uOx9e0Ri0syUo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.176] ([37.4.249.154]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MQ5rU-1iKtLS0PC4-00M5AL; Mon, 16
 Dec 2019 20:56:14 +0100
Subject: Re: [PATCH V4 01/10] bluetooth: hci_bcm: Fix RTS handling during
 startup
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, =?UTF-8?Q?Ond=c5=99ej_Jirman?=
 <megous@megous.com>
References: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
 <1570375708-26965-2-git-send-email-wahrenst@gmx.net>
 <61789264-a4c2-ac85-9d74-d186213ec70a@gmx.net>
 <20191216132509.ofqcdpwxsd7324ql@core.my.home>
 <6f05f4d8-fa84-ae81-ac4f-00ab12fabeea@gmx.net>
 <20191216194235.4pq2xpfl7nz3p55w@core.my.home>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <ff0206e0-8290-0639-5399-5304b9454110@gmx.net>
Date: Mon, 16 Dec 2019 20:56:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191216194235.4pq2xpfl7nz3p55w@core.my.home>
Content-Language: en-US
X-Provags-ID: V03:K1:frpVMvHvuwuUjwYqcSegzPvPNdhbH3fki7ucVW2an/S2FhOx+UY
 UcSNCOk4IpNNG4W8cZ7siJs2B/tR7FLt++GI7BAMFyDi6qO7EP3tkHr7FGAW9AtzQmVHta3
 7h6zwi49JMchT2PpuBILSToHHv09DVPsduHtvCHY9Ewgo5GgBGc33Ge4kd9XG7p4Bc/wHP4
 zgmTQtird6GDCtegho8MQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BNw9DSMBEC4=:bdYEcuDFgaeDTz5P1s3yax
 l13x3/Xtj+VlfUkVJg0oVPAWp2VV1ALfyJ0nzq0DExgodeXMDbpr0LoC4wEKOYc5sLE0zLsVK
 d+WG2PIrojejyuckxioWwqRuVi0fGfUH7IWWyFLCAXgSjtnZN+ff+DD/wputazvQR4kKWlKx2
 sRv2IUrGMtqVaEviTiBwlmsu7O11xRqP1vBEE+z4AwOQaSfQeU64FB4HSJEIIms2SVvMqVgML
 JqBEnINTDTaJjPSFndsLw5kUg017Az8BdPyC0TVSC/HuauLaHhoX0uztgOvUfPKO+bnmUTOTN
 JbpHc7FxR8BR1Xv6WADCs73MNeodh/WSr7RspThKY+kSXiOdLOdN8528VnECeQDLa/UQCn1Q2
 iNaLvWaPYNzoN9EcTaNlfZC/FVJVOxQvPhH02aNGPLVVCSZ7YAqodFFMglT4WhgCUq8ku8wXy
 yjXlBYa3FbuGTF/E5Pzhx1O+hf6hSLJ+0+dSmQLGSoZdTTW/M9H0Bl5fX6rLAxCGlIa2+8Q09
 OrveGtnKfVFQ4LFgaOTj6olCFDklzvyACcxdeYlop8u7PjVni33V5tkVjAzfY3ANKilrb+UVu
 s0NEJJ72nNy+VblxunKioG/yJDk+gBFcLiDYcwcx4sEyixA6y1qmTiK8nu2bCat8BgECUz725
 lgG2wrMJPzGygv2+yUzO/2y3uHklv/wyj6n244nWLcm6n2jDjczwIPeO28WG0Z0CR6GTYZ7ta
 5H3H25d1w7JGmxtKKlo/dChCGlZevicnSZcDG13nmpThwCc13vGfUn0uQH5rXhz1I8fdOZ940
 I+uJk/D3G5Nn35bAvk1i/6qqC8279TSQtpDhc5cI7Et3WzudQBM+h7neXQ+HuI7cnrnR4FBnM
 Cy93cOJGbGzWpyAoEdFojScHHz0sbL0L5JtVfeHDflsmZ31Q22uC4PT01kkPPiyeC+pW1V6d/
 d6wMkOm/6j6EmNpOpe6asvU8a4mPHBFhQtqV44WoOmfUfSlnHN4rHCu2+Rb70WC5MEfyvVosb
 mJpcjEovzpB/pFF9s/5PLuYX/BfqYhiwC5ZZ4PJOK0kYycQorhzbuLsqdyAt6TVXxjpNg7Et1
 5a1Tjbq4NIB4c/mVub1ERqIOTmPCDU9N23pUBYlTDKbAE4TbE7GmgQrp/egG4b4+GkAaBC8qm
 MZz/MK8jrNpYhtNoSnZlMlrdwZmGQdoFiHn0UGnVv1nBlpKJ0gfiJXR3oHg9FZtreuZUxLMZo
 0XmnqZ6dER1TICekvEGpR88GmuzlzFc7aZTY1fUxe2G5Q5w116fjRXxBRI2o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_115619_665210_18D3365F 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-bluetooth@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gT25kcmVqLAoKQW0gMTYuMTIuMTkgdW0gMjA6NDIgc2NocmllYiBPbmTFmWVqIEppcm1h
bjoKPiBIZWxsbyBTdGVmYW4sCj4KPiBPbiBNb24sIERlYyAxNiwgMjAxOSBhdCAwNzoyODowNFBN
ICswMTAwLCBTdGVmYW4gV2FocmVuIHdyb3RlOgo+PiBIaSBPbmRyZWosCj4+Cj4+IHNvcnJ5LCBp
IGRvbid0IGhhdmUgYWNjZXNzIHRvIGEgT3JhbmdlIFBpIDMuCj4+Cj4+IEkgbG9va2VkIGF0IGHC
oCBBUDYyNTYgZGF0YXNoZWV0IFsxXSwgYnV0IGkgY291bGRuJ3QgZmluZCBhbnkgaGVscGZ1bAo+
PiBpbmZvcm1hdGlvbiBhYm91dCBmbG93IGNvbnRyb2wgZHVyaW5nIHBvd2VyIHVwLgo+Pgo+PiBB
cmUgeW91IGFibGUgdG8gYW5hbHl6ZSB0aGlzIGlzc3VlIG1vcmUgZnVydGhlciBiZWZvcmUgd2Ug
cmV2ZXJ0IHRoaXMgcGF0Y2g/Cj4gSSdkIGxpa2UgdG8sIGJ1dCBJJ2xsIG5vdCBiZSBhYmxlIHRv
IGF0dGFjaCBsb2dpYyBwcm9iZSB0byB0aGUgQVA2MjU2Cj4gbW9kdWxlLiBJdCdzIHRvbyBmaW5l
IHBpdGNoIGZvciBzb2xkZXJpbmcuCnRoaXMgdGhlIHNhbWUgaXNzdWUsIGkgaGFkIHdpdGggdGhl
IFJhc3BiZXJyeSBQaSA0IDotKAo+IEkgbWF5IHRyeSBzZXR0aW5nIENUUy9SVFMgdG8gZ3Bpby9p
bnB1dCBtb2RlIGFuZCBncmFiIHRoZSBjYXB0dXJlIG9mCj4gdGhlIEdQSU8gcG9ydCBzdGF0ZXMg
aW4gdGltZSB0byBzZWUgd2hhdCdzIGhhcHBlbmluZyBkdXJpbmcgcHJvYmUKPiBvZiBidF9iY20g
bW9kdWxlLgo+Cj4gSSBkb24ndCByZWFsbHkgdW5kZXJzdGFuZCB3aGF0IGVmZmVjdCB5b3VyIHBh
dGNoIGlzIHN1cHBvc2VkIHRvIGhhdmUKPiBvbiB0aGUgQ1RTL1JUUyBsaW5lcyBkdXJpbmcgcG93
ZXIgdXAgZnJvbSB0aGUgY29tbWl0IGRlc2NyaXB0aW9uLgo+IENhbiB5b3UgcGxlYXNlIGV4cGxh
aW4gaXQgbW9yZSBjb25jcmV0ZWx5PwpJIGhvcGUgYSBwaWN0dXJlIGV4cGxhaW4gbW9yZSB0aGFu
IHRob3VzYW5kIHdvcmRzLiBQbGVhc2UgbG9vayBhdCBmaWd1cmUKNyBhdCBwYWdlIDIyIG9mIHRo
ZSBkYXRhc2hlZXQgWzJdLiBUaGUgcGF0Y2ggdHJpZXMgdG8gYWNoaWV2ZSB0aGUgcHJvcGVyCnRp
bWluZyBvZiBCVF9VQVJUX0NUU19OLgo+Cj4gSSdsbCBiZSBhYmxlIHRvIGdldCB0byBwbGF5aW5n
IHdpdGggdGhpcyBhZnRlciB0aGUgaG9saWRheXMuCgpPa2F5CgpTdGVmYW4KClsyXSAtCmh0dHBz
Oi8vd3d3LnZlcmljYWwuY29tL2RhdGFzaGVldC9jeXByZXNzLXNlbWljb25kdWN0b3ItY29tYm8t
d2lyZWxlc3MtbW9kdWxlLWN5dzQzNDU1eGt1Ymd0LTU3NzA1OTUucGRmCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
