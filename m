Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FCA18AA37
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 02:11:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yFJ36TV7D9f1Hs/NMMXjKz7G7pAmGE24M0N8XoAkoec=; b=ZAtC6xl/FxACQf
	RcRMtfU2xowfr1mmf+tkz6+y561CjJXKXbFSGVTLgdhIXLk38L6GLIThxULb9DGaIeiPjCRykrNGa
	RWzcuvvP1WnHgiirR6Xg60j2Q+e5+mepHQkE+/B2Tuz8zxXrTztD7nQWs4RR9KeW4eKlIRngXJiY+
	RdCbrzJyps1iIqoDfNV48hRu62/PWhZhnpOrl3AxwuLBlkvm38CQ03pIT7K5zJiapEM2R9cNt2uQ4
	dDr/0Q3f+LEMR07vWOQUjZEoZUQXPypHWFlXuQakzpNq6YboSoWJat7dAiOD90v3qTEARyw5exV20
	Vq7lIcWFjCuotKSkQJUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEjiN-0003VH-HH; Thu, 19 Mar 2020 01:11:15 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEjiG-0003Um-D1
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 01:11:10 +0000
Received: by mail-lj1-x244.google.com with SMTP id f13so581400ljp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 18:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=EGLmZef2vUA7iNMUpqEjZKG2eTNPGHi8uOxfXVF1Rjw=;
 b=KGTt2yvZX6PtwUcegfBuj+F6P+E32i1Ew5+D4XNqj79iu0S5xqyHH72bNWFqyD4RRE
 VACJ4at/mDoZRJWAkYUN5YSWdAy9q2XU94xHuKPq6Kc43S3PAbVN5/mpK2tLJ9O2jOoy
 oZ47D9I7UPJMGWcOejse9qdUxA6sRH9J+R+RhsI9YDMiVUULZvlWm898oFn9STryornS
 RKOn5kDdHQqGA7MqGWGmWW3uQgIpCbFsL/KFwTbDa62fgxG5/rwJcLkjp1FbiG54G7ha
 Imo4+i3ICcJKLarv2BSBdU0U09KQxWIDPvmaNzrE157fV7PGrF4OvNv0ssrXumokQ74c
 DooA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EGLmZef2vUA7iNMUpqEjZKG2eTNPGHi8uOxfXVF1Rjw=;
 b=jsuIxoFuVCshW5CkckkjDneQ3tV+6jRjPEm81Gzd1udrZl8FD5uL2ZsJ8fAPR2L7gI
 nrAs2rXeZPGHOHClBqJhavy8RInfJFD/oEKV0pXBo6Ps/uGFQQ6vKMvuv5HBKrOBD1Ox
 jQTFtvzke0h0Mgl7yMH7paTc7eDRG37N527VsBx/H6GKYbiFW7DZUoykp3y7Br+FvFXn
 HmQ3yXzqKjYac0yUH8O/DTEqJiX0stwL1f0BZkemZ1Sw2JudII81uyUfzdpE6/2nxBC6
 H9NYT41phMSqLvOd9iTxRnK8UXsOF85LrZ3Ceh4SfPqO/aKIjaBoYK5cp4Eiu9EoxuiJ
 XRug==
X-Gm-Message-State: ANhLgQ2/1ofKyskk0zHho032bSSsQ+X1QFevsM+QQ7mHUlxrIqDbLUNc
 urC5eek58ViH6STNCXYc9iw=
X-Google-Smtp-Source: ADFU+vvIjlCChhIMUE6nFnW/q6nRyE3HYLgiA/phWU7QXfP+DpRbQB4guS7riNIzDsvbcuroJUH2RA==
X-Received: by 2002:a2e:b008:: with SMTP id y8mr414626ljk.107.1584580262759;
 Wed, 18 Mar 2020 18:11:02 -0700 (PDT)
Received: from [192.168.2.145] (94-29-39-224.dynamic.spd-mgts.ru.
 [94.29.39.224])
 by smtp.googlemail.com with ESMTPSA id o4sm210739lfl.62.2020.03.18.18.11.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Mar 2020 18:11:01 -0700 (PDT)
Subject: Re: [PATCH v2] ARM: boot: Obtain start of physical memory from DTB
To: Geert Uytterhoeven <geert@linux-m68k.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Russell King <linux@armlinux.org.uk>
References: <CGME20200225112354eucas1p1300749b32c6809b6a22194c1a952a68c@eucas1p1.samsung.com>
 <20200127140716.15673-1-geert+renesas@glider.be>
 <d1b12473-5199-1cf6-25d1-a6ce79450e8e@samsung.com>
 <CAMuHMdUGu4eStpYp5W0SKJd8yrLLDTgF4__Jq_n+Z7SWtPM+Cg@mail.gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <90c006f2-8c13-2976-008f-37139ca49f37@gmail.com>
Date: Thu, 19 Mar 2020 04:11:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdUGu4eStpYp5W0SKJd8yrLLDTgF4__Jq_n+Z7SWtPM+Cg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_181108_463748_0B54687C 
X-CRM114-Status: GOOD (  21.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Nicolas Pitre <nico@fluxnic.net>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Eric Miao <eric.miao@nvidia.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjUuMDIuMjAyMCAxNDo0MCwgR2VlcnQgVXl0dGVyaG9ldmVuINC/0LjRiNC10YI6Cj4gSGkgTWFy
ZWssCj4gCj4gT24gVHVlLCBGZWIgMjUsIDIwMjAgYXQgMTI6MjQgUE0gTWFyZWsgU3p5cHJvd3Nr
aQo+IDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+IHdyb3RlOgo+PiBPbiAyNy4wMS4yMDIwIDE1
OjA3LCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4+PiBDdXJyZW50bHksIHRoZSBzdGFydCBh
ZGRyZXNzIG9mIHBoeXNpY2FsIG1lbW9yeSBpcyBvYnRhaW5lZCBieSBtYXNraW5nCj4+PiB0aGUg
cHJvZ3JhbSBjb3VudGVyIHdpdGggYSBmaXhlZCBtYXNrIG9mIDB4ZjgwMDAwMDAuICBUaGlzIG1h
c2sgdmFsdWUKPj4+IHdhcyBjaG9zZW4gYXMgYSBiYWxhbmNlIGJldHdlZW4gdGhlIHJlcXVpcmVt
ZW50cyBvZiBkaWZmZXJlbnQgcGxhdGZvcm1zLgo+Pj4gSG93ZXZlciwgdGhpcyBkb2VzIHJlcXVp
cmUgdGhhdCB0aGUgc3RhcnQgYWRkcmVzcyBvZiBwaHlzaWNhbCBtZW1vcnkgaXMKPj4+IGEgbXVs
dGlwbGUgb2YgMTI4IE1pQiwgcHJlY2x1ZGluZyBib290aW5nIExpbnV4IG9uIHBsYXRmb3JtcyB3
aGVyZSB0aGlzCj4+PiByZXF1aXJlbWVudCBpcyBub3QgZnVsZmlsbGVkLgo+Pj4KPj4+IEZpeCB0
aGlzIGxpbWl0YXRpb24gYnkgb2J0YWluaW5nIHRoZSBzdGFydCBhZGRyZXNzIGZyb20gdGhlIERU
QiBpbnN0ZWFkLAo+Pj4gaWYgYXZhaWxhYmxlIChlaXRoZXIgZXhwbGljaXRseSBwYXNzZWQsIG9y
IGFwcGVuZGVkIHRvIHRoZSBrZXJuZWwpLgo+Pj4gRmFsbCBiYWNrIHRvIHRoZSB0cmFkaXRpb25h
bCBtZXRob2Qgd2hlbiBuZWVkZWQuCj4+Pgo+Pj4gVGhpcyBhbGxvd3MgdG8gYm9vdCBMaW51eCBv
biByN3M5MjEwL3J6YTJtZXZiIHVzaW5nIHRoZSA2NCBNaUIgb2YgU0RSQU0KPj4+IG9uIHRoZSBS
WkEyTUVWQiBzdWIgYm9hcmQsIHdoaWNoIGlzIGxvY2F0ZWQgYXQgMHgwQzAwMDAwMCAoQ1MzIHNw
YWNlKSwKPj4+IGkuZS4gbm90IGF0IGEgbXVsdGlwbGUgb2YgMTI4IE1pQi4KPj4+Cj4+PiBTdWdn
ZXN0ZWQtYnk6IE5pY29sYXMgUGl0cmUgPG5pY29AZmx1eG5pYy5uZXQ+Cj4+PiBTaWduZWQtb2Zm
LWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgo+Pj4gUmV2
aWV3ZWQtYnk6IE5pY29sYXMgUGl0cmUgPG5pY29AZmx1eG5pYy5uZXQ+Cj4+PiAtLS0KPj4+IEFn
YWluc3QgYXJtL2Zvci1uZXh0Lgo+Pgo+PiBUaGlzIHBhdGNoIGxhbmRlZCByZWNlbnRseSBpbiBs
aW51eC1uZXh0LiBJdCBicmVha3MgbGVnYWN5IGJvb3RpbmcgZnJvbQo+PiB0aGUgekltYWdlICsg
YXBwZW5kZWQgRFQgKyBjbWRsaW5lL21lbW9yeSBpbmZvIHByb3ZpZGVkIHZpYSBBVEFHcy4gSQo+
PiB3aWxsIGRlYnVnIGl0IGZ1cnRoZXIgb25jZSBJIGZpbmQgc29tZSBzcGFyZSB0aW1lLiBXaGF0
IEkgbm90aWNlZCBzbwo+PiBmYXIsIHRoZSBjbWRsaW5lL21lbW9yeSBpbmZvIGlzIG5vdCByZWFk
IGZyb20gdGhlIEFUQUdzLCBvbmx5IHRoZSB2YWx1ZXMKPj4gcHJvdmlkZWQgdmlhIGFwcGVuZGVk
IERUIGFyZSB1c2VkLgo+IAo+IE9vcHMsIHNvbWV0aGluZyBoYXBwZW5pbmcgbGlrZSB0aGlzIHdh
cyBvbmUgb2YgbXkgYmlnZ2VzdCB3b3JyaWVzIHdoZW4KPiBwb3N0aW5nIHRoaXMgcGF0Y2guLi4g
U29ycnkgZm9yIHRoZSBicmVha2FnZS4KPiAKPiBJSVVJQywgdGhlIGtlcm5lbCBzdGlsbCBib290
cywgYnV0IGp1c3QgZG9lc24ndCB1c2UgdGhlIGluZm8gcGFzc2VkIGJ5IEFUQUdzPwo+IAo+IEkn
bGwgaGF2ZSBhIGNsb3NlciBsb29rIGxhdGVyIHRvZGF5Lgo+IEluIHRoZSBtZWFuIHRpbWUsIEkn
dmUgc2VudCBzb21lIGRlYnVnIGNvZGUgSSB1c2VkIHdoZW4gZGV2ZWxvcGluZwo+IHRoaXMgcGF0
Y2gsIHdoaWNoIG1heSBiZSB1c2VmdWwsIGhvcGVmdWxseS4KCkhlbGxvLAoKTlZJRElBIFRlZ3Jh
IGlzIGFsc28gYWZmZWN0ZWQgYnkgdGhpcyBwYXRjaC4gQSB3ZWVrIGFnbyBhbiB1cGRhdGVkCnZl
cnNpb24gb2YgdGhlIHBhdGNoIHdhcyBwdXNoZWQgaW50byBsaW51eC1uZXh0IGFuZCBub3cgbWFj
aGluZSBkb2Vzbid0CmJvb3QgYXQgYWxsLgoKSSBjb3VsZG4ndCBmaW5kIHYzIG9uIHRoZSBNTCwg
c28gcmVwbHlpbmcgdG8gdGhlIHYyLiBQbGVhc2UgdGFrZSBhIGxvb2sKYW5kIGZpeCB0aGUgcHJv
YmxlbSwgb3IgcmV2ZXJ0L2Ryb3AgdGhlIG9mZmVuZGluZyBwYXRjaCwgdGhhbmtzIGluIGFkdmFu
Y2UuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
