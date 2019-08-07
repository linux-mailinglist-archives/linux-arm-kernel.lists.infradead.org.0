Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A980F856B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 02:00:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lurxC0CDVdhluG9ZYbP9ctsDr5GlC9PERFA1iVKtGzM=; b=WkYUpU16FhWknm
	z9Y/mW0SDwqTUSAkwU2ju0g1RS9xRjA+q1iztus08eo2yC34L56EEjvQncXHHE2wmZ1Uawhl+w9rB
	p6WSKZMO6HKL/F31MgBI3LG3YxoqvbJiBX+7pA1pgVLzc/lejPhB/VQFCIf33AFx/7dzM0M9+rayJ
	LjsF2IsSsMNIkVUe0SzDoyxmbJb7J3xyHA4EuV3cWrvH+vgwoP20OTaO7/Hba1lvQ0qXAynDvPEH9
	zxJEONHFVXyT47DsJ6oAeZEvIlnxP4vac7TOhOqzFgLY19oyI4iu/jAvd/3eW5735MWf22x3Yy99O
	0w9kNqhWufWEyeR8yRNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvVqb-00067n-QL; Thu, 08 Aug 2019 00:00:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvVq0-00067O-LP
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 23:59:26 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D714217D9;
 Wed,  7 Aug 2019 23:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565222363;
 bh=xlQGs4Ss1PEAXXFBoCe2f1wiOxkqtY6afXuf8TMA9Xw=;
 h=In-Reply-To:References:From:Cc:To:Subject:Date:From;
 b=Rc4GwQf5rpwauL1csS5qRpDY92wjK/Dpk0A1DPPcgh/V0YCa3P+3ZIsWZ5ZhjOmf+
 JAq4VaPmsevg5gVvmNGKIQwcxSWHA5UuY8suZLnlz2HFwreM07sWviu+W3xPx2TzJY
 P4xr+s0CUvYCi/0zj+BnoWFtJ7JU1oJGqMrDMHAw=
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKZHG-y_cKitU0=EksgyVU-YLOi1gAcFXx4ve21CMki1g@mail.gmail.com>
References: <20190725020551.27034-1-Anson.Huang@nxp.com>
 <20190725210619.5EB94218D4@mail.kernel.org>
 <CAL_JsqKZHG-y_cKitU0=EksgyVU-YLOi1gAcFXx4ve21CMki1g@mail.gmail.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: clock: imx8mn: Fix tab indentation for yaml
 file
User-Agent: alot/0.8.1
Date: Wed, 07 Aug 2019 16:59:22 -0700
Message-Id: <20190807235923.9D714217D9@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_165924_731694_86748DBE 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Anson Huang <Anson.Huang@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <Linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Rob Herring (2019-07-25 14:37:24)
> On Thu, Jul 25, 2019 at 3:06 PM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Anson.Huang@nxp.com (2019-07-24 19:05:51)
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > >
> > > YAML file can NOT contain tab as indentation, fix it.
> > >
> >
> > Would be nice if checkpatch could check for this.
> 
> Would be nice if folks just ran 'make dt_binding_check'. :) It
> wouldn't be hard to add a tab check to checkpatch, but that's just one
> potential problem.
> 

Cool, thanks for the pointer. Seems I forgot :)

Here's a patch to improve the documentation and make help to answer
questions I had about how to work this into my workflow.

diff --git a/Documentation/devicetree/writing-schema.md b/Documentation/devicetree/writing-schema.md
index dc032db36262..17ad67887fde 100644
--- a/Documentation/devicetree/writing-schema.md
+++ b/Documentation/devicetree/writing-schema.md
@@ -120,6 +120,7 @@ This will first run the `dt_binding_check` which generates the processed schema.
 It is also possible to run checks with a single schema file by setting the
 'DT_SCHEMA_FILES' variable to a specific schema file.
 
+`make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/trivial-devices.yaml`
 `make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/trivial-devices.yaml`
 
 
diff --git a/Makefile b/Makefile
index 9be5834073f8..96bb28aa1c46 100644
--- a/Makefile
+++ b/Makefile
@@ -1503,8 +1503,10 @@ help:
 	@echo  ''
 	@$(if $(dtstree), \
 		echo 'Devicetree:'; \
-		echo '* dtbs            - Build device tree blobs for enabled boards'; \
-		echo '  dtbs_install    - Install dtbs to $(INSTALL_DTBS_PATH)'; \
+		echo '* dtbs             - Build device tree blobs for enabled boards'; \
+		echo '  dtbs_install     - Install dtbs to $(INSTALL_DTBS_PATH)'; \
+		echo '  dt_binding_check - Validate device tree binding documents'; \
+		echo '  dtbs_check       - Validate device tree source files'; \
 		echo '')
 
 	@echo 'Userspace tools targets:'


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
