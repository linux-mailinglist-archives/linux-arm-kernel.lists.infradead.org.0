Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3801D5520
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 17:51:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bPTr/59HXA1RknX9Pm+LSc6Lt2GbtLG9Bqp9iB8ZoqM=; b=hxom15dzpytOaHa+YMjNQJeA4D
	WVSajnXwdI1rYG70msjYeX/44vAd8UrQeGvV2DhToQMiQppEgBmY+f6w7dd0o7w5Lro/mRk3Znwjx
	17FhmKijHG2cvn04Xnh7/dQZX78Cf1s4Uag9MaMsanTMhT7ayUOzbMKBAAaISM1+yngUvI8k1MlFN
	dQRfa1nnvDCTQO9WH/kOrK9eW09FKQAHQm3i3l3ZB0CUHhAEmFwauvOYlg2q4baN+xwJiWOSkkOCI
	ws+Q35eM77hLJVtlCTG5O2ChJz4RuwcG5Aqt0F342h75M5eCCGQlyUXXjoPUPwglimv1r03Be8YY7
	y1EM298Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZcbt-0001Qf-PA; Fri, 15 May 2020 15:50:53 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZcbh-0001PA-OE
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 15:50:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589557841; x=1621093841;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=MDIagMcn7mtuRjSwV1TW+kBgMJmNhc1GuhsOuPDwSjA=;
 b=FTMj8AwE6Sm7tJRx8eIOlC7ziCpn+Uus+MDke3a9it1b+dQzDKrkADT+
 X/7OcXgyoZsmIbRIKLyldQAulvc84f9o6GDjG/3UVlggr4baoSfbrPAy2
 E71dI6gqPX87zP4cYjGs+oFm7F/DYfGL41AtVx7Pc+L3MAz/sUqn3Udqi
 uo/g6kgtDNIbmbMNoOE9KJzRMyaKnFgUpzMNMoI/ASsREm4Tt/WAJrtI0
 Sr4SPeEaw5FcP2hElOuMTLrjhKvYlOMjlL6ghNST+vFlNgiTsAWBPlaZP
 A91E7MCQw1rUTURcj2EcGp0d5QG2ggnrgr2WH8SRVuFC6asvsX6bWtE1Q g==;
IronPort-SDR: I/qRcPDftRSuDS3oZ/Yg8hkzzKz87JMkmZGRX/CRyKNK9aOiBJLrIHXEjMtIKvh7ilKQjxCYBt
 0caWAGW27FWHrET47n3/5mCkj1k00dKIfJVFzi5/Q/aRnwhxytJg7FSNzrd6iVj9C4kMkZktJ3
 oFzLG8QKXY1eGP2E0krhyvx5q3nBCOtHqBva0jGRk8LlxJqe23IGOxjOPoI/BI3eLmEspPit8K
 7cwXiTKFJltJ2R8MYABxTUHdYiyqNYNf35oPm92VuNmoUVNOqHLt0xSASMqikAAS25EM7Fp+Ed
 pI4=
X-IronPort-AV: E=Sophos;i="5.73,395,1583218800"; d="scan'208";a="12522245"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 08:50:39 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 08:50:42 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 15 May 2020 08:50:36 -0700
References: <20200513133122.25121-1-lars.povlsen@microchip.com>
 <20200513133122.25121-2-lars.povlsen@microchip.com>
 <20200514130351.GA17797@bogus>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: mmc: Add Sparx5 SDHCI controller bindings
In-Reply-To: <20200514130351.GA17797@bogus>
Date: Fri, 15 May 2020 17:50:35 +0200
Message-ID: <87zha9nqno.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_085041_871837_42A8CAC8 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, linux-mmc@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, SoC
 Team <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lars Povlsen <lars.povlsen@microchip.com>, Microchip Linux
 Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Rob Herring writes:

> On Wed, 13 May 2020 15:31:20 +0200, Lars Povlsen wrote:
>> The Sparx5 SDHCI controller is based on the Designware controller IP.
>>
>> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
>> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
>> ---
>>  .../mmc/microchip,dw-sparx5-sdhci.yaml        | 57 +++++++++++++++++++
>>  1 file changed, 57 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.yaml
>>
>
>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.example.dts:20:18: fatal error: dt-bindings/clock/microchip,sparx5.h: No such file or directory
>          #include <dt-bindings/clock/microchip,sparx5.h>
>                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> compilation terminated.
> scripts/Makefile.lib:312: recipe for target 'Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.example.dt.yaml' failed
> make[1]: *** [Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.example.dt.yaml] Error 1
> make[1]: *** Waiting for unfinished jobs....
> Makefile:1300: recipe for target 'dt_binding_check' failed
> make: *** [dt_binding_check] Error 2
>
> See https://patchwork.ozlabs.org/patch/1289290
>

Rob,

The header file is added with the "parent" SoC series for Sparx5, which
was submitted separately to the SoC list.

Should I rewrite the example to avoid using the (normal) header file, or
can you add the header file?

I have verified the YAML pass dt_binding_check with the header file.

> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure dt-schema is up to date:
>
> pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade
>
> Please check and re-submit.

-- 
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
