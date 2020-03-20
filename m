Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EB918D2EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 16:30:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ziNTysN6sUYykNWPwXWB/Pdlaee0AH7KK6U55whsUus=; b=ivJ6vPJmDT7jNg
	u3tbgoPRBUci2CYJ9FxFiT+Z0ej3MGe3D65naKweZUootLGKihZR3sAZfQZzEXBLbEGBu1Ky/0MJC
	8L8smqZUfAn890007e/7X6EhG5ygny2TqEp11KQxqv9Mg4TmtqAdqlL4J6I8mIfy2t7lShi1KNbu3
	bAuw9KrLoRr0fviPfXHFliWFb/MLNj1vHM32WBi+5HME0gxpFyoY3u2yBgBBGvvDD+K+k7gf4QRep
	I1xX6x+Woa/KulBTLXMdWMsYqAr7nTywPco12rmkWdwku6opK1iGOwFV++GHqcPeHqUe1IRvo2h+k
	ihU9cwOQNS0Tb7wmTtZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFJbR-0003aQ-MO; Fri, 20 Mar 2020 15:30:29 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFJbI-0003Zt-RI
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 15:30:22 +0000
Received: by mail-lj1-x241.google.com with SMTP id o10so6834703ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 08:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sMbKgWDf+6YEqFuP2XxJddc5yqXTRKLOZsCDJg1VmV0=;
 b=P19HlNlVFBS+M+4Xp+gMNuKDQUO6wbh1z1gjwcxlRlP2nfZSmLry7uNSfyI2ciCdXZ
 jUJX2ENK9aJIvWSHN6/5Kv4FilJOIrXnQ+ZKDlHpt65HSmrJjLThnJCKrCQKb5Ww9HeP
 HdHrLbfn+jrZ1FT7ecfHcHUSfzegepx/4EmSNhbnoLeimASVWWztxjmJe6+3HekzHmmM
 djAJEUVvO5JhIJUTHU1/l/oGLRPKNsckVGi7m3E9DyUPq2omQzZn0X7U5VWJBaBaxKBs
 Fk6cHHrYTDgbZ9jz/jGE+vqA21Cpb1MKkP4cKsFWttVRxUx8NK5zPrksafJvzT9lAtJn
 t9QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sMbKgWDf+6YEqFuP2XxJddc5yqXTRKLOZsCDJg1VmV0=;
 b=Mm9MSBweFR8IDywFod3r7sR48l5Qqk4YSqhtSx/ziq3Rtao/EOrrZBsW0JtAUyS0WR
 OcN3uX5dtx/LfxljYZq4XpJFmaNm1OQMz4U4ERyAqPB/Y/XMGjx8OMJXbxP/Z8k3/jtG
 XbKgCXpOmJH8/XYrIXrUXddZbfkM2Mbc8GxsTxwyJDILaaZpMNq6Do35BHl63XUT4ww+
 rFl2Fa5148qH2UEY7qwCMuxVcNchFv5uKUZ8eO6F+fJluTn8WAqWUbKOERW1wblQFCxv
 bSvBxsKsKba/tLdxcTv3FlyC127SYOuWm545UEEABYeQiChjePfnmeuOeuUcQWbzsKbu
 07RA==
X-Gm-Message-State: ANhLgQ0VguuICZPXHoaLv4eVzKuCa12pmy0Ca7BYVxLnLmbjrv+K0bX/
 MPzcXnh99tWTrlKQhMCRVb4=
X-Google-Smtp-Source: ADFU+vsRoHNbHE8XQ+yVv2ygL69QKiTi+qXqBn2vxgHkmwVByeXyVWopVSdb2dJDnPvpzKOvsrk7Dw==
X-Received: by 2002:a2e:9256:: with SMTP id v22mr5632511ljg.38.1584718218867; 
 Fri, 20 Mar 2020 08:30:18 -0700 (PDT)
Received: from [192.168.2.145] (94-29-39-224.dynamic.spd-mgts.ru.
 [94.29.39.224])
 by smtp.googlemail.com with ESMTPSA id u5sm3702357lfu.69.2020.03.20.08.30.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Mar 2020 08:30:18 -0700 (PDT)
Subject: Re: [PATCH v4] ARM: boot: Obtain start of physical memory from DTB
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Russell King <linux@armlinux.org.uk>, Nicolas Pitre <nico@fluxnic.net>,
 Arnd Bergmann <arnd@arndb.de>, Eric Miao <eric.miao@nvidia.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <20200320144348.12865-1-geert+renesas@glider.be>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <df884591-8af9-3b66-f09d-f1a4d6c6579a@gmail.com>
Date: Fri, 20 Mar 2020 18:30:17 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200320144348.12865-1-geert+renesas@glider.be>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_083020_894730_8DC4282D 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-renesas-soc@vger.kernel.org, Chris Brandt <chris.brandt@renesas.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjAuMDMuMjAyMCAxNzo0MywgR2VlcnQgVXl0dGVyaG9ldmVuINC/0LjRiNC10YI6Cj4gQ3VycmVu
dGx5LCB0aGUgc3RhcnQgYWRkcmVzcyBvZiBwaHlzaWNhbCBtZW1vcnkgaXMgb2J0YWluZWQgYnkg
bWFza2luZwo+IHRoZSBwcm9ncmFtIGNvdW50ZXIgd2l0aCBhIGZpeGVkIG1hc2sgb2YgMHhmODAw
MDAwMC4gIFRoaXMgbWFzayB2YWx1ZQo+IHdhcyBjaG9zZW4gYXMgYSBiYWxhbmNlIGJldHdlZW4g
dGhlIHJlcXVpcmVtZW50cyBvZiBkaWZmZXJlbnQgcGxhdGZvcm1zLgo+IEhvd2V2ZXIsIHRoaXMg
ZG9lcyByZXF1aXJlIHRoYXQgdGhlIHN0YXJ0IGFkZHJlc3Mgb2YgcGh5c2ljYWwgbWVtb3J5IGlz
Cj4gYSBtdWx0aXBsZSBvZiAxMjggTWlCLCBwcmVjbHVkaW5nIGJvb3RpbmcgTGludXggb24gcGxh
dGZvcm1zIHdoZXJlIHRoaXMKPiByZXF1aXJlbWVudCBpcyBub3QgZnVsZmlsbGVkLgo+IAo+IEZp
eCB0aGlzIGxpbWl0YXRpb24gYnkgb2J0YWluaW5nIHRoZSBzdGFydCBhZGRyZXNzIGZyb20gdGhl
IERUQiBpbnN0ZWFkLAo+IGlmIGF2YWlsYWJsZSAoZWl0aGVyIGV4cGxpY2l0bHkgcGFzc2VkLCBv
ciBhcHBlbmRlZCB0byB0aGUga2VybmVsKS4KPiBGYWxsIGJhY2sgdG8gdGhlIHRyYWRpdGlvbmFs
IG1ldGhvZCB3aGVuIG5lZWRlZC4KPiAKPiBUaGlzIGFsbG93cyB0byBib290IExpbnV4IG9uIHI3
czkyMTAvcnphMm1ldmIgdXNpbmcgdGhlIDY0IE1pQiBvZiBTRFJBTQo+IG9uIHRoZSBSWkEyTUVW
QiBzdWIgYm9hcmQsIHdoaWNoIGlzIGxvY2F0ZWQgYXQgMHgwQzAwMDAwMCAoQ1MzIHNwYWNlKSwK
PiBpLmUuIG5vdCBhdCBhIG11bHRpcGxlIG9mIDEyOCBNaUIuCj4gCj4gU3VnZ2VzdGVkLWJ5OiBO
aWNvbGFzIFBpdHJlIDxuaWNvQGZsdXhuaWMubmV0Pgo+IFNpZ25lZC1vZmYtYnk6IEdlZXJ0IFV5
dHRlcmhvZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+Cj4gUmV2aWV3ZWQtYnk6IE5pY29s
YXMgUGl0cmUgPG5pY29AZmx1eG5pYy5uZXQ+Cj4gVGVzdGVkLWJ5OiBNYXJlayBTenlwcm93c2tp
IDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Cj4gLS0tCj4gdjQ6Cj4gICAtIEZpeCBzdGFjayBs
b2NhdGlvbiBhZnRlciBjb21taXQgMTg0YmY2NTNhN2E0NTJjMSAoIkFSTToKPiAgICAgZGVjb21w
cmVzc29yOiBmYWN0b3Igb3V0IHJvdXRpbmUgdG8gb2J0YWluIHRoZSBpbmZsYXRlZCBpbWFnZQo+
ICAgICBzaXplIiksCj4gCj4gdjM6Cj4gICAtIEFkZCBSZXZpZXdlZC1ieSwKPiAgIC0gRml4IEFU
QUdzIHdpdGggYXBwZW5kZWQgRFRCLAo+ICAgLSBBZGQgVGVzdGVkLWJ5LAo+IAo+IHYyOgo+ICAg
LSBVc2UgImNtcCByMCwgIy0xIiwgaW5zdGVhZCBvZiAiY21uIHIwLCAjMSIsCj4gICAtIEFkZCBt
aXNzaW5nIHN0YWNrIHNldHVwLAo+ICAgLSBTdXBwb3J0IGFwcGVuZGVkIERUQi4KPiAtLS0KPiAg
YXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL01ha2VmaWxlICAgICAgICAgICAgfCAgNiArKy0KPiAg
YXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL2ZkdF9nZXRfbWVtX3N0YXJ0LmMgfCA1MiArKysrKysr
KysrKysrKysrKysrCj4gIGFyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9oZWFkLlMgICAgICAgICAg
ICAgIHwgNTQgKysrKysrKysrKysrKysrKysrKy0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMTAgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJt
L2Jvb3QvY29tcHJlc3NlZC9mZHRfZ2V0X21lbV9zdGFydC5jCgpUaGFuayB5b3UgdmVyeSBtdWNo
ISBJdCB3b3JrcyEKClRlc3RlZC1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwuY29t
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
