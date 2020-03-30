Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FE119792E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 12:22:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6nMB+Wn7mHtqz32l459ZFJOjLvG9emzAr6lwYJbXKHY=; b=tjLxDh5FgewmGvc7TPeWXuiUi
	sZMoRvy0f2fN4pzlU64p5z3VK/zOUe7hxmExHyO/Meb5Wr4A51l9IctTTaof6d5l9rCWwqMfnZl/q
	72RJo8SNY6XjRPN2aef11/4DRc1PyvP2NCFYHDiVxOaIVbo2UEn/h98rxjziCaXXPYyQHmxs6sloh
	3rA1rBWYK6de/jfmYT18Uw6dSZTcLR+27DYemBZ35ckIyvVQohxOgzTt1MnKq0I37gm42ylO4x0oI
	0AAVJYHcyYTlKUnfS+Oa3y7ufWxKIpTnbY3j+X9nWDc2HZmFmiSFC4jKVPHHSCq+cWhhG/6Fkpdaq
	SrenBFD/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIrYG-0000ix-B4; Mon, 30 Mar 2020 10:21:52 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIrY7-0000gT-6F
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 10:21:45 +0000
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com
 [209.85.222.47]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id 02UALCn8007690
 for <linux-arm-kernel@lists.infradead.org>; Mon, 30 Mar 2020 19:21:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 02UALCn8007690
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1585563673;
 bh=age6B3Q1YALNVXTjtXbWA6xegYm+dQCmImhIvDBLFFI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=AHmRqT3iiWkdvGRwePu36ChTwTWyvMFo1mfBOU+QxPuIfMuovfCK4N5gtD5Eo1UPc
 O4T6pSYwtE/JBNeR2bsl3vYs5jIVRVdmopiwzhFKLoDDOzRL/pLX1F8BIH6NwtgNrn
 8Jt/87YJX8xx0MjkXjJ/xbx30yrGeAH9uZuONwKUoBL8jSnRZ/p/I6UgxEMt/zkC1D
 pwAO/e/I5ciHuJxEoOtxprJE4GBVtEZjjISTVqoYdWFiCpf2Adicd/C8AtxpCbM45l
 c4ANedeZh+hNaT0RXD4XwYRNzdVa3Im+u8JdnXEvuUnEyKsXeb7p3TdG4l97/t3hXl
 O+EiZ6xVZqm0A==
X-Nifty-SrcIP: [209.85.222.47]
Received: by mail-ua1-f47.google.com with SMTP id d23so5820009uak.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 03:21:12 -0700 (PDT)
X-Gm-Message-State: AGi0Puar2TFxi5fIAoPkuCM9pT8fVKjhZRvP/FzO7tg4d91nxQeni7Lz
 voZNam5u3dR8Z7wY9XSjvFpdzuQHYSuVEGunwyk=
X-Google-Smtp-Source: APiQypJXUnkK3NbFFLynQq+coARG1pdTbgPXjSysDqi6EwFK5zY3vAtWK3OAUXZ3/tyle00gwJkiE4vSM2k31pS/bVg=
X-Received: by 2002:a9f:28c5:: with SMTP id d63mr7166320uad.25.1585563671565; 
 Mon, 30 Mar 2020 03:21:11 -0700 (PDT)
MIME-Version: 1.0
References: <1584955970-8162-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1584955970-8162-2-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1584955970-8162-2-git-send-email-hayashi.kunihiko@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 30 Mar 2020 19:20:35 +0900
X-Gmail-Original-Message-ID: <CAK7LNARyRcxR0nhPWo9mY=tahGtwY2E8A50X_Tv4VhFfM-WLGQ@mail.gmail.com>
Message-ID: <CAK7LNARyRcxR0nhPWo9mY=tahGtwY2E8A50X_Tv4VhFfM-WLGQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: dma: uniphier-xdmac: Consolidate
 register region description
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Content-Type: multipart/mixed; boundary="00000000000069e9ff05a20fcfb1"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_032143_571793_9D884BFC 
X-CRM114-Status: GOOD (  23.28  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: DTML <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jassi Brar <jaswinder.singh@linaro.org>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--00000000000069e9ff05a20fcfb1
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 23, 2020 at 6:33 PM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> The extension register region isn't currently referred from the driver, so
> this consolidates the extension register region description into the base
> register region, and spreads the region size in example.


You should not say this in the commit log.

The DT binding is hardware description.
Whether it is used or not in the driver is not a primary reason.



I recommend you to read this:


Documentation/devicetree/bindings/writing-bindings.txt:

- DON'T refer to Linux or "device driver" in bindings. Bindings should be
  based on what the hardware has, not what an OS and driver currently support.




> Fixes: b9fb56b6ba8a ("dt-bindings: dmaengine: Add UniPhier external DMA controller bindings")
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml b/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
> index 86cfb59..830cd88 100644
> --- a/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
> +++ b/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
> @@ -23,8 +23,7 @@ properties:
>
>    reg:
>      items:
> -      - description: XDMAC base register region (offset and length)
> -      - description: XDMAC extension register region (offset and length)
> +      - description: XDMAC register region (offset and length)

Now that the reg is a single tuple,
the "items" is unneeded.



>    interrupts:
>      maxItems: 1
> @@ -54,7 +53,7 @@ examples:
>    - |
>      xdmac: dma-controller@5fc10000 {
>          compatible = "socionext,uniphier-xdmac";
> -        reg = <0x5fc10000 0x1000>, <0x5fc20000 0x800>;
> +        reg = <0x5fc10000 0x5100>;


Checking the datasheet (LD20), this seems still wrong.

The last register is XDMAID3 : 0x5fc1520c

So, reg = <0x5fc10000 0x5300>;


I attached a patch, which I think more correct.
Please check it, and I will send it to the correct ML.



>          interrupts = <0 188 4>;
>          #dma-cells = <2>;
>          dma-channels = <16>;
> --
> 2.7.4
>

-- 
Best Regards
Masahiro Yamada

--00000000000069e9ff05a20fcfb1
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-dt-bindings-dma-uniphier-xdmac-switch-to-single-reg-.patch"
Content-Disposition: attachment; 
	filename="0001-dt-bindings-dma-uniphier-xdmac-switch-to-single-reg-.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k8ebl7qt0>
X-Attachment-Id: f_k8ebl7qt0

RnJvbSA5NDY0MmIwZmM3OTc2YmU1MTRhY2M3MGEwOTVlZTNlZmVhYzNkOGUzIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXNhaGlybyBZYW1hZGEgPHlhbWFkYS5tYXNhaGlyb0Bzb2Np
b25leHQuY29tPgpEYXRlOiBNb24sIDMwIE1hciAyMDIwIDE4OjMxOjE4ICswOTAwClN1YmplY3Q6
IFtQQVRDSF0gZHQtYmluZGluZ3M6IGRtYTogdW5pcGhpZXIteGRtYWM6IHN3aXRjaCB0byBzaW5n
bGUgcmVnIHJlZ2lvbgoKVGhlIHJlZyBpbiB0aGUgZXhhbXBsZSAiPDB4NWZjMTAwMDAgMHgxMDAw
PiwgPDB4NWZjMjAwMDAgMHg4MDA+IgppcyB3cm9uZy4gVGhlIHJlZ2lzdGVyIHJlZ2lvbiBvZiB0
aGlzIGNvbnRyb2xsZXIgaXMgbXVjaCBzbWFsbGVyLAphbmQgdGhlcmUgaXMgbm8gb3RoZXIgaGFy
ZHdhcmUgcmVnaXN0ZXIgaW50ZXJsZWF2ZWQuIFRoZXJlIGlzCm5vIGdvb2QgcmVhc29uIHRvIHNw
bGl0IGl0IGludG8gdHdvIHJlZ2lvbnMuCgpKdXN0IHVzZSBhIHNpbmdsZSwgY29udGlndW91cyBy
ZWdpc3RlciByZWdpb24uCgpXaGlsZSBJIGFtIGhlcmUsIEkgbWFkZSB0aGUgJ2RtYS1jaGFubmVs
cycgcHJvcGVydHkgbWFuZGF0b3J5IGJlY2F1c2UKb3RoZXJ3aXNlIHRoZXJlIGlzIG5vIHdheSB0
byBkZXRlcm1pbmUgdGhlIG51bWJlciBvZiB0aGUgY2hhbm5lbHMuCgpQbGVhc2Ugbm90ZSB0aGUg
b3JpZ2luYWwgYmluZGluZyB3YXMgbWVyZ2VkIHJlY2VudGx5LiBTaW5jZSB0aGVyZQppcyBubyB1
c2VyIHlldCwgdGhpcyBjaGFuZ2UgaGFzIG5vIGFjdHVhbCBpbXBhY3QuCgpGaXhlczogYjlmYjU2
YjZiYThhICgiZHQtYmluZGluZ3M6IGRtYWVuZ2luZTogQWRkIFVuaVBoaWVyIGV4dGVybmFsIERN
QSBjb250cm9sbGVyIGJpbmRpbmdzIikKU2lnbmVkLW9mZi1ieTogTWFzYWhpcm8gWWFtYWRhIDx5
YW1hZGEubWFzYWhpcm9Ac29jaW9uZXh0LmNvbT4KLS0tCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5n
cy9kbWEvc29jaW9uZXh0LHVuaXBoaWVyLXhkbWFjLnlhbWwgIHwgNyArKystLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kbWEvc29jaW9uZXh0LHVuaXBoaWVyLXhk
bWFjLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hL3NvY2lvbmV4
dCx1bmlwaGllci14ZG1hYy55YW1sCmluZGV4IDg2Y2ZiNTk5MjU2ZS4uMzcxZjE4NzczMTk4IDEw
MDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hL3NvY2lvbmV4
dCx1bmlwaGllci14ZG1hYy55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9kbWEvc29jaW9uZXh0LHVuaXBoaWVyLXhkbWFjLnlhbWwKQEAgLTIyLDkgKzIyLDcgQEAg
cHJvcGVydGllczoKICAgICBjb25zdDogc29jaW9uZXh0LHVuaXBoaWVyLXhkbWFjCiAKICAgcmVn
OgotICAgIGl0ZW1zOgotICAgICAgLSBkZXNjcmlwdGlvbjogWERNQUMgYmFzZSByZWdpc3RlciBy
ZWdpb24gKG9mZnNldCBhbmQgbGVuZ3RoKQotICAgICAgLSBkZXNjcmlwdGlvbjogWERNQUMgZXh0
ZW5zaW9uIHJlZ2lzdGVyIHJlZ2lvbiAob2Zmc2V0IGFuZCBsZW5ndGgpCisgICAgbWF4SXRlbXM6
IDEKIAogICBpbnRlcnJ1cHRzOgogICAgIG1heEl0ZW1zOiAxCkBAIC00OSwxMiArNDcsMTMgQEAg
cmVxdWlyZWQ6CiAgIC0gcmVnCiAgIC0gaW50ZXJydXB0cwogICAtICIjZG1hLWNlbGxzIgorICAt
IGRtYS1jaGFubmVscwogCiBleGFtcGxlczoKICAgLSB8CiAgICAgeGRtYWM6IGRtYS1jb250cm9s
bGVyQDVmYzEwMDAwIHsKICAgICAgICAgY29tcGF0aWJsZSA9ICJzb2Npb25leHQsdW5pcGhpZXIt
eGRtYWMiOwotICAgICAgICByZWcgPSA8MHg1ZmMxMDAwMCAweDEwMDA+LCA8MHg1ZmMyMDAwMCAw
eDgwMD47CisgICAgICAgIHJlZyA9IDwweDVmYzEwMDAwIDB4NTMwMD47CiAgICAgICAgIGludGVy
cnVwdHMgPSA8MCAxODggND47CiAgICAgICAgICNkbWEtY2VsbHMgPSA8Mj47CiAgICAgICAgIGRt
YS1jaGFubmVscyA9IDwxNj47Ci0tIAoyLjE3LjEKCg==
--00000000000069e9ff05a20fcfb1
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--00000000000069e9ff05a20fcfb1--

