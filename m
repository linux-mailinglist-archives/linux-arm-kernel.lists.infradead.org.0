Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C86C198F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 09:23:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUXF5zCNcIiX4qdLB+QlStJEIM118ZOui9JPhhXAq5M=; b=D2QtMkJuL1JMFu
	C0X9kPzf/u2WAbz4YftHxLgbLotTgHs62XBETCQqmfQCNwDoicVc0Y63/XtJaMB+UeVtCUdi1Ymk6
	CWiuYRIkOIblVFkRVWmgYwz5E8syo9A2alTNSkc+aoovLEPMhKfXnyHDmjp5Top/c66CASNNZ1WXp
	MjaSNt1hBy22M8kzNtwKb/ROYnpRfGslplPzyjJFoyPuiSMjn1WYYeBqtw7NvZIkga8EDRFiVXW5c
	XPISwGxaOt4Qi5pbccqIIifGL5pcRGcSrhZqa4AuqV02l2E+2Co54A/EghZf5v96soasENb3KSceD
	SfESXyhR3cyyCrBWX+EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOzsP-0004zk-T0; Fri, 10 May 2019 07:23:29 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOzsI-0004yi-Go
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 07:23:23 +0000
Received: by mail-wm1-x344.google.com with SMTP id f204so780514wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 00:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=6IJvqYq4JZWD5aTcjw2ROgUsvIuulKVOwmPtVdRwUBw=;
 b=MLfJXEMdZmKpvWHQlqIzfyImp6Wy+KcsU0p5YvE1otyh3zIOF+I1vvQ/PJnC4diJpY
 sh7j6UBJ/0TsdJxDPFx15teFeEEP0QzxEIQEcUOhHwljvJCS2Tjkf/2mrXiP9/ZgNwHe
 CH4EkBxMqLQgUUoLVvHev0mv2XVIeQZeRZWtqthsJGrx+ZQjGkna1+4trW4eI+KMpWg/
 NqQgmANFTSZNHuEBAXzpXICTBex/HmPLIEN8E0Q2umUFYZfV9vf8qRqgiXOYJdB/lK+T
 nasc2eF4kXFxaiNB/WjJeNwU3qb9R9VMtLpc1FhwexCo5vE8Uqiyx1kEp0G2RSSP1FIm
 NJ6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=6IJvqYq4JZWD5aTcjw2ROgUsvIuulKVOwmPtVdRwUBw=;
 b=UedkgZJvVYIs6ZMiNU/0OqxzJQCd66DHt0av+wxhGCoCMbdxg/UQWZYthYtN2RtULZ
 zfVw+yc/9NEw/w4EichgoTav4aMUgnGdzIVCV6MTgnpzQkSOiA2koFV44ZZ7MSXYEzXE
 8HEVHiAfk/nnX0KDfjcsBMtcl7MUepV3gdm/5W3D+ruIExFUfMNOp1nF9BIkg6UFf/Ss
 3qAb9V4k5nwle/oDiFtp9lErVfyDyLB9wdbEn/KYW3cOVEsks8WIWaSUnCWqKVMUrDDI
 HoFll/s8U/olfPHWyUm0JDycv4ImhJ5689v2B759/jzfg/qEdFeHMAL4GAVLthklgWTq
 8Eug==
X-Gm-Message-State: APjAAAWnVgG1LKTK2bI74em1S4dWilRNoRoB/hTVSGrjpCAWtNFf2YAb
 c1Q5EOiRiwW++Z5Ewu5kY8xrtg==
X-Google-Smtp-Source: APXvYqwFI/XoRqh3l4hbVHQYN4vuu2sgvGQIfc1CDZPFb5/hfW20fNRJaFM/GapMBIrdKush+zwVEw==
X-Received: by 2002:a1c:7008:: with SMTP id l8mr5638463wmc.49.1557472996594;
 Fri, 10 May 2019 00:23:16 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id n14sm1748514wrt.79.2019.05.10.00.23.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 May 2019 00:23:16 -0700 (PDT)
Date: Fri, 10 May 2019 08:23:14 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: [GIT PULL] Immutable branch between MFD and Pinctrl due for the v5.2
 merge window
Message-ID: <20190510072314.GC7321@dell>
References: <1557392336-28239-1-git-send-email-amelie.delaunay@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557392336-28239-1-git-send-email-amelie.delaunay@st.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_002322_561326_BC117F66 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW5qb3khCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IGU5M2M5Yzk5YTYyOWM2
MTgzN2Q1YTdmYzIxMjBjZDJiNmM3MGRiZGQ6CgogIExpbnV4IDUuMSAoMjAxOS0wNS0wNSAxNzo0
Mjo1OCAtMDcwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0OgoKICBn
aXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbGVlL21mZC5naXQg
aWItbWZkLXBpbmN0cmwtdjUuMgoKZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIDE0OTBk
OWY4NDFiMTg2NjY0ZjlkM2NhMjEzZGNmYTQ0NjRhNjA2ODA6CgogIHBpbmN0cmw6IEFkZCBTVE1G
WCBHUElPIGV4cGFuZGVyIFBpbmN0cmwvR1BJTyBkcml2ZXIgKDIwMTktMDUtMTAgMDg6MjE6MzEg
KzAxMDApCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCkltbXV0YWJsZSBicmFuY2ggYmV0d2VlbiBNRkQgYW5kIFBpbmN0cmwg
ZHVlIGZvciB0aGUgdjUuMiBtZXJnZSB3aW5kb3cKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KQW1lbGllIERlbGF1bmF5ICg0
KToKICAgICAgZHQtYmluZGluZ3M6IG1mZDogQWRkIFNUIE11bHRpLUZ1bmN0aW9uIGVYcGFuZGVy
IChTVE1GWCkgY29yZSBiaW5kaW5ncwogICAgICBtZmQ6IEFkZCBTVCBNdWx0aS1GdW5jdGlvbiBl
WHBhbmRlciAoU1RNRlgpIGNvcmUgZHJpdmVyCiAgICAgIGR0LWJpbmRpbmdzOiBwaW5jdHJsOiBk
b2N1bWVudCB0aGUgU1RNRlggcGluY3RybCBiaW5kaW5ncwogICAgICBwaW5jdHJsOiBBZGQgU1RN
RlggR1BJTyBleHBhbmRlciBQaW5jdHJsL0dQSU8gZHJpdmVyCgogRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL21mZC9zdG1meC50eHQgICAgfCAgMjggKwogLi4uL2RldmljZXRyZWUv
YmluZGluZ3MvcGluY3RybC9waW5jdHJsLXN0bWZ4LnR4dCAgfCAxMTYgKysrCiBkcml2ZXJzL21m
ZC9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxMyArCiBkcml2ZXJz
L21mZC9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMiArLQogZHJp
dmVycy9tZmQvc3RtZnguYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCA1NDUgKysr
KysrKysrKysrKysKIGRyaXZlcnMvcGluY3RybC9LY29uZmlnICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgIDEyICsKIGRyaXZlcnMvcGluY3RybC9NYWtlZmlsZSAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvcGluY3RybC9waW5jdHJsLXN0bWZ4LmMgICAgICAg
ICAgICAgICAgICAgIHwgODIwICsrKysrKysrKysrKysrKysrKysrKwogaW5jbHVkZS9saW51eC9t
ZmQvc3RtZnguaCAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxMjMgKysrKwogOSBmaWxlcyBj
aGFuZ2VkLCAxNjU5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3N0bWZ4LnR4dAogY3Jl
YXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waW5jdHJs
L3BpbmN0cmwtc3RtZngudHh0CiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZmQvc3RtZngu
YwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGluY3RybC9waW5jdHJsLXN0bWZ4LmMKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L21mZC9zdG1meC5oCgotLSAKTGVlIEpvbmVz
IFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKU
giBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJv
b2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
