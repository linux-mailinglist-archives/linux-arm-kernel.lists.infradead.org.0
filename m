Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDD81A5CF6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 07:42:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TQvA8MS8tuphbOlqY1pTTuU6BVCYLvcIcM+n5sLqif8=; b=qq2no8kiMCMT+v
	siJeOaTbwQDIWJWoVojGNNnAtSSsqThw7KmjVpQ9W2pCR35TfOfuAih2w7vBVYu41YMSX6SPTZacK
	yGhwWZ2BQO3RYDRu6jnt+rr/++lldMoGTiMXJnQw5HfZJUfO6oKSElzt+9Q+0oPeTrjiUip+sqIST
	RKFF9Mv+oyqXztXfDKmtQebK9fz9BR+afRGVVS2RxVejUvFFPQSzO/ZZcLie5PDf/w0Gkkh3EGofu
	rKFgyyRPer8s+ZYZNdJrBlJM1HSFgRjTRWd5KAd+Cu+7DM8C8HfHxyFlzBdiWguw9hI3jbGMqc9ge
	Gf2ikxORukTy6DUjYHfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNVNf-00039q-Bo; Sun, 12 Apr 2020 05:42:07 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNVNV-000397-Ed
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 05:41:59 +0000
Received: by mail-ua1-x942.google.com with SMTP id x18so1336368uap.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 Apr 2020 22:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XMvROckWSzZfp2JUvr5KET2psvIF8ZxdMVepuEQaA4s=;
 b=PQh/QZ3Ntpmm0BQVcIAg+kDDuZ9M8adW+Sux0XWnEYRhMuYFvX/+o0hdOiBbociQIH
 iddxcqiUXIcylhnDmNw/qOxMAmfEg5v7wwpXFw/4ZUzN8QtLf9UxvWQ12EME3TooVT+a
 m+SORXmlAlP4gLW9mzh1Ze3p/c6m8zBECVIDDwkQq+Xl68dPCAEg+M7lyujU8DDOjh+5
 /FQMfzu4sI+8JKIwsJYtnLhe6KVUlyXfdSo/ByQzljBnHaENkDOcDTNk21NerMBKQ1As
 GOu5xyDi9FaZZiUUuUudfUxQiUD0ZPDdEOB8ilSAIJoiv2xpR/dxwUg9SEKUELN8OzMO
 LYfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XMvROckWSzZfp2JUvr5KET2psvIF8ZxdMVepuEQaA4s=;
 b=keGSIn9HMIz9aGPLFcQRdx5F3oFL8XkhnkfYtOl6yT7S6NB1O25k36MqapLf7Y3rMd
 5yvJ8sw1sY4Zoj2vxGVtFZ5el5GnZixYSX9/bpp3G9VI3cVahAHnz+WhsuuHCBEYX9r7
 IPx78Kpa/97Td9btv4prtecMziSFfTI8OdKm0yDFJjF2r+iWr0QjIXlRJbM+wIWW12Me
 +8A3H2+ievnVYEFxVH2Furzn00zqsTbtWVmgNSHpF0VKx9IMt78w70FqBZ9/245KNWAM
 eS1SRMUtCwJMv3vBiQv0Qp/G0ZoXv0os2/znLRHtoAtdHkSo54rHseVpWr0NU1U7F4u5
 S9hg==
X-Gm-Message-State: AGi0PubJn4AfLhU1SaKwiKcTsHXi3A421N4RJs5cmwd8D4KhnKEJsVHB
 CU7XqwT3RhXsGe6OjIq2qJNGV1gkH9JWiEXuCCE=
X-Google-Smtp-Source: APiQypKaKILu/yYi19LBLzQbWwiJVhXP8pRWBBkZ7RYj0TWODlXX/ZismC6P31jZPZPtZW3m/h/S8zEQwC1eRu4SlDA=
X-Received: by 2002:a9f:27ca:: with SMTP id b68mr5443180uab.8.1586670115689;
 Sat, 11 Apr 2020 22:41:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200327170638.17670-1-alim.akhtar@samsung.com>
 <CGME20200327171418epcas5p4b85bea273e17c05a7edca58f528c435a@epcas5p4.samsung.com>
 <20200327170638.17670-4-alim.akhtar@samsung.com>
 <20200405020208.GA22609@bogus>
In-Reply-To: <20200405020208.GA22609@bogus>
From: Alim Akhtar <alim.akhtar@gmail.com>
Date: Sun, 12 Apr 2020 11:11:19 +0530
Message-ID: <CAGOxZ52nCF92adSk3a64qjZfMxXd3qHRayWZzuTRwNjcd2cC1w@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] Documentation: devicetree: ufs: Add DT bindings
 for exynos UFS host controller
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_224157_517425_7F1BC6AD 
X-CRM114-Status: GOOD (  28.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alim.akhtar[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, "Martin K. Petersen" <martin.petersen@oracle.com>,
 open list <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kiwoong Kim <kwmad.kim@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, Can Guo <cang@codeaurora.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob

On Sun, Apr 5, 2020 at 7:33 AM Rob Herring <robh@kernel.org> wrote:
>
> On Fri, Mar 27, 2020 at 10:36:36PM +0530, Alim Akhtar wrote:
> > This adds Exynos Universal Flash Storage (UFS) Host Controller DT bindings.
>
> Why the inconsistent subject. 'dt-bindings: ...' please.
>
Sure will update
> >
> > Signed-off-by: Seungwon Jeon <essuuj@gmail.com>
> > Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> > ---
> >  .../devicetree/bindings/ufs/ufs-exynos.txt    | 104 ++++++++++++++++++
> >  1 file changed, 104 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/ufs/ufs-exynos.txt
>
> Use DT schema format. Not sure why you'd do that for one and not the
> other...
>
Yah, this is my 1st attempt to write binding in DT schema format, few
things were not clear, now with your review, things got clear. I will
keep the common UFS binding as it is and change exynos UFS binding in
schema format.
Will post the changes soon.

> >
> > diff --git a/Documentation/devicetree/bindings/ufs/ufs-exynos.txt b/Documentation/devicetree/bindings/ufs/ufs-exynos.txt
> > new file mode 100644
> > index 000000000000..08e2d1497b1b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/ufs/ufs-exynos.txt
> > @@ -0,0 +1,104 @@
> > +* Exynos Universal Flash Storage (UFS) Host Controller
> > +
> > +UFSHC nodes are defined to describe on-chip UFS host controllers.
> > +Each UFS controller instance should have its own node.
> > +
> > +Required properties:
> > +- compatible        : compatible name, contains "samsung,exynos7-ufs"
> > +- interrupts        : <interrupt mapping for UFS host controller IRQ>
> > +- reg               : Should contain HCI, vendor specific, UNIPRO and
> > +                   UFS protector address space
> > +- reg-names      : "hci", "vs_hci", "unipro", "ufsp";
> > +
> > +Optional properties:
> > +- vdd-hba-supply        : phandle to UFS host controller supply regulator node
> > +- vcc-supply            : phandle to VCC supply regulator node
> > +- vccq-supply           : phandle to VCCQ supply regulator node
> > +- vccq2-supply          : phandle to VCCQ2 supply regulator node
> > +- vcc-supply-1p8        : For embedded UFS devices, valid VCC range is 1.7-1.95V
> > +                          or 2.7-3.6V. This boolean property when set, specifies
> > +                       to use low voltage range of 1.7-1.95V. Note for external
> > +                       UFS cards this property is invalid and valid VCC range is
> > +                       always 2.7-3.6V.
>
> The supply for vcc-supply should be restricted to the valid range and
> this is not needed.
>
For now, I will leave these common binding as it is.
> > +- vcc-max-microamp      : specifies max. load that can be drawn from vcc supply
> > +- vccq-max-microamp     : specifies max. load that can be drawn from vccq supply
> > +- vccq2-max-microamp    : specifies max. load that can be drawn from vccq2 supply
>
> How is this information useful?
>
> > +- <name>-fixed-regulator : boolean property specifying that <name>-supply is a fixed regulator
>
> No need for this. Look up the phandle and check supply's node if you
> want to know this.
>
ok
> > +
> > +- clocks                : List of phandle and clock specifier pairs
> > +- clock-names           : List of clock input name strings sorted in the same
> > +                          order as the clocks property.
> > +                       "core", "sclk_unipro_main", "ref" and ref_parent
> > +
> > +- freq-table-hz              : Array of <min max> operating frequencies stored in the same
> > +                       order as the clocks property. If this property is not
> > +                       defined or a value in the array is "0" then it is assumed
> > +                       that the frequency is set by the parent clock or a
> > +                       fixed rate clock source.
> > +- pclk-freq-avail-range : specifies available frequency range(min/max) for APB clock
> > +- ufs,pwr-attr-mode : specifies mode value for power mode change, possible values are
> > +                     "FAST", "SLOW", "FAST_auto" and "SLOW_auto"
>
> Anything before the ',' is considered a vendor prefix and 'ufs' is not a
> vendor.
>
> If these are standard UFS properties, then they should be documented in
> a common UFS binding. On the flip side, none of the other UFS bindings
> have needed these properties, so why do you?
>
Yah understood, these are not UFS common properties, I will change the
driver instead to handle them.
This will also simply exynos UFS binding.

> > +- ufs,pwr-attr-lane : specifies lane count value for power mode change
> > +                   allowed values are 1 or 2
> > +- ufs,pwr-attr-gear : specifies gear count value for power mode change
> > +                   allowed values are 1 or 2
> > +- ufs,pwr-attr-hs-series : specifies HS rate series for power mode change
> > +                        can be one of "HS_rate_b" or "HS_rate_a"
> > +- ufs,pwr-local-l2-timer : specifies array of local UNIPRO L2 timer values
> > +                        3 timers supported
> > +                        <FC0ProtectionTimeOutVal,TC0ReplayTimeOutVal, AFC0ReqTimeOutVal>
> > +- ufs,pwr-remote-l2-timer : specifies array of remote UNIPRO L2 timer values
> > +                        3 timers supported
> > +                        <FC0ProtectionTimeOutVal,TC0ReplayTimeOutVal, AFC0ReqTimeOutVal>
> > +- ufs-rx-adv-fine-gran-sup_en : specifies support of fine granularity of MPHY,
> > +                           this is a boolean property.
> > +- ufs-rx-adv-fine-gran-step : specifies granularity steps of MPHY,
> > +                           allowed step size is 0 to 3
> > +- ufs-rx-adv-min-activate-time-cap : specifies rx advanced minimum activate time of MPHY
> > +                                  range is 1 to 9
> > +- ufs-pa-granularity : specifies Granularity for PA_TActivate and PA_Hibern8Time
> > +- ufs-pa-tacctivate : specifies time to wake-up remote M-RX
> > +- ufs-pa-hibern8time : specifies minimum time to wait in HIBERN8 state
> > +
> > +Note: If above properties are not defined it can be assumed that the supply
> > +regulators or clocks are always on.
> > +
> > +Example:
> > +     ufshc@0x15570000 {
> > +             compatible = "samsung,exynos7-ufs";
> > +             reg = <0x15570000 0x100>,
> > +                   <0x15570100 0x100>,
> > +                   <0x15571000 0x200>,
> > +                   <0x15572000 0x300>;
> > +             reg-names = "hci", "vs_hci", "unipro", "ufsp";
> > +             interrupts = <0 200 0>;
> > +
> > +             vdd-hba-supply = <&xxx_reg0>;
> > +             vdd-hba-fixed-regulator;
> > +             vcc-supply = <&xxx_reg1>;
> > +             vcc-supply-1p8;
> > +             vccq-supply = <&xxx_reg2>;
> > +             vccq2-supply = <&xxx_reg3>;
> > +             vcc-max-microamp = 500000;
> > +             vccq-max-microamp = 200000;
> > +             vccq2-max-microamp = 200000;
> > +
> > +             clocks = <&core 0>, <&ref 0>, <&iface 0>;
> > +             clock-names = "core", "sclk_unipro_main", "ref", "ref_parent";
> > +             freq-table-hz = <100000000 200000000>, <0 0>, <0 0>, <0 0>;
> > +
> > +             pclk-freq-avail-range = <70000000 133000000>;
> > +
> > +             ufs,pwr-attr-mode = "FAST";
> > +             ufs,pwr-attr-lane = <2>;
> > +             ufs,pwr-attr-gear = <2>;
> > +             ufs,pwr-attr-hs-series = "HS_rate_b";
> > +             ufs,pwr-local-l2-timer = <8000 28000 20000>;
> > +             ufs,pwr-remote-l2-timer = <12000 32000 16000>;
> > +             ufs-rx-adv-fine-gran-sup_en = <1>;
> > +             ufs-rx-adv-fine-gran-step = <3>;
> > +             ufs-rx-adv-min-activate-time-cap = <9>;
> > +             ufs-pa-granularity = <6>;
> > +             ufs-pa-tacctivate = <6>;
> > +             ufs-pa-hibern8time = <20>;
> > +     };
> > --
> > 2.17.1
> >



-- 
Regards,
Alim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
