Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5DC1F7E92
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 23:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ah6WzTvvY3VUWnM8JRnwABnZSN19RBWVWTELafzoCHg=; b=jhKacQlAmNQEyt
	ZyW4Pb2sz4oD22yBjNkc44RCbvPxg7KnrC3jKeJNH0m3Hq32Xfzhhqk/6K6apUYJGptNdwopUyBcN
	C6sBmKmVv97UyaSJLHgBDSIjt82pOtfstncrHHCEwRWA3TgAaWUHPfKBS9Kf20iohng3NV1jRwK8T
	2/nL5m2lILvbn+w1HgNQ0EcrbGBK52o31p97Tooltal6HaHwcvB2LWLKal2D3EiPpSUEDDoGG3ejf
	KgA3GFTPHhR4mKHTNXlTx40P/T9BR4wB4m89I6MjRSY/i2OhTAxwTRK34oE39Opy3SSZ3rYHM6XUW
	z3NR44z4wAOj5MGOLy0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjreA-0005qP-FZ; Fri, 12 Jun 2020 21:55:34 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjre1-0005q1-Pc
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 21:55:27 +0000
Received: by mail-io1-f68.google.com with SMTP id r2so11873426ioo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 14:55:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=zeSbj81vVnxS9NXhKFb49ek1Y7R+SLP12ZGaeIEM7FU=;
 b=G7ytiJwJn/j8hDDfeL1ukMJeKdUungjaw5vHLiCN2eGXM5TKO0jwjF/P6KlaVu8KPW
 pwb33tZBfkrzL5aTA9t/vFzShgdQxHm1ntlc7KCvBK6TmY3is4+OZNRZZQH9CA80Kp1x
 IE/uvJ5B6RzjBC84u+dYu+bWTAimVNLRttaUgGu/MXhSJQ5b3ndTlnGG+BctbzUx7o5C
 Nor6SKVTq1NVI1Z6E/UX8BnriPHTeTxOa4VmdVlXRSJQ5fHmTTEdietdqTzrRyepDWoF
 ZXIirbFH8y8epgKF2Xn8gEBIS0LAhx/mktV6cLePr4pVoQYUYJkD5nFRjkouwvFzC5gU
 AbsQ==
X-Gm-Message-State: AOAM532hJUYT6YBTugaCYJ0Yzl1/7nsrmlL25vE4hZmLczPHBkdMtFbZ
 Wg3hUojgifeKNx04ujCeag==
X-Google-Smtp-Source: ABdhPJxHabdY5JdKROrKpr08zxF3Ux2W47mrJIq4u461tlw37JjLxpZP72odON2nr5lHup0MB5NI8Q==
X-Received: by 2002:a02:c9c5:: with SMTP id c5mr10251999jap.5.1591998924878;
 Fri, 12 Jun 2020 14:55:24 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id l3sm3845591iow.55.2020.06.12.14.55.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 14:55:24 -0700 (PDT)
Received: (nullmailer pid 3882057 invoked by uid 1000);
 Fri, 12 Jun 2020 21:55:22 -0000
Date: Fri, 12 Jun 2020 15:55:22 -0600
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?=C1lvaro_Fern=E1ndez?= Rojas <noltari@gmail.com>
Subject: Re: [PATCH v3 1/9] dt-bindings: soc: brcm: add BCM63xx power domain
 binding
Message-ID: <20200612215522.GA3881384@bogus>
References: <20200610163301.461160-1-noltari@gmail.com>
 <20200610171630.465579-1-noltari@gmail.com>
 <20200610171630.465579-2-noltari@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200610171630.465579-2-noltari@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_145525_829667_B2DFBC2C 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, tsbogend@alpha.franken.de, hauke@hauke-m.de,
 zajec5@gmail.com, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 jonas.gorski@gmail.com, f.fainelli@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 10 Jun 2020 19:16:22 +0200, =C1lvaro Fern=E1ndez Rojas wrote:
> BCM6318, BCM6328, BCM6362 and BCM63268 SoCs have a power domain controller
> to enable/disable certain components in order to save power.
> =

> Signed-off-by: =C1lvaro Fern=E1ndez Rojas <noltari@gmail.com>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  v3: fix reg maxItems and quote #power-domain-cells.
>  v2: Add separate YAML file.
> =

>  .../bindings/soc/bcm/brcm,bcm63xx-power.yaml  | 44 +++++++++++++++++++
>  1 file changed, 44 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm63x=
x-power.yaml
> =



My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/soc/bcm/brcm,bcm63xx-power.yaml: $id: rel=
ative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/soc/bcm/brcm,bcm63xx-power.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/bc=
m/brcm,bcm63xx-power.example.dt.yaml: power-controller@10001848: reg: [[268=
441672, 4]] is too short


See https://patchwork.ozlabs.org/patch/1307099

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --u=
pgrade

Please check and re-submit.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
