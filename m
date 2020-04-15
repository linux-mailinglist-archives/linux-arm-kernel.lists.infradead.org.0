Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F3E1A9258
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 07:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZPXi4i26wUyD2upFmzhOaGYLS8xLnMiYG1zdD9OMc8=; b=QlIsjaUCBJvefz
	zJ/k83dagNuXyFzorsTizbjfEvJtaRo788ks4J0djwz1yxp5nRB1+SAeWod5w7EDkozRwQL36rpEN
	acdwvA5Pg9CDz4wvxKFE9TN142UdZKkQVLwY3vxcnoOvsa6ILynnJ6eTEZZV+W+1e8Y20mrQtshOO
	wS0JYFpXY+ALAs7KFPvsL9em/aYTUrWqCaHxtiHL5i48Y80GMKN70z4tN1yQZw9kSxzlKcA+kd9RS
	aSridyN7TPKLp0Hae/LlwS3tgW6pWXy3L41DTWBCuC8nLhr3QjwHtB0dBZt+ctmebAOfa2PMVBFBr
	55yL37NImajsvAioGcvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOaS5-0008Db-Oc; Wed, 15 Apr 2020 05:19:09 +0000
Received: from mail-lj1-f193.google.com ([209.85.208.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOaRv-0008D4-Pe; Wed, 15 Apr 2020 05:19:01 +0000
Received: by mail-lj1-f193.google.com with SMTP id k21so2294706ljh.2;
 Tue, 14 Apr 2020 22:18:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZMsHh1YYYlFOiLqHkdfxs3ZwTkApJsjLYTYyYwXvsRY=;
 b=Z2XvUptOFznNeiDO9vBXQ844eyeps3TO8n69hi2wb94IwZ9MINQx+THUsoTtfK/UDN
 JKuEWrYqA+cOMjEcUUtQMymOnKRhotht+iqZsvyBD7N9PU7HCIJYnF7Gf3rErYfIEna9
 +2LlZnpYtMfX+b0Lm/HSeiPMT9Ja3ESVbabsegWtnIOKe35zB6qM7EDUbXlSpHOfFHQz
 GPnwVKu7ZH4D4zJbG727h7T2Jt90IlXDDdcMPsHguKGIRUaWqT3qHOLQFy/uYb6/9RK0
 F+iSqy/7Kx38S9IwILjsHlKF/rDbmTx1YHqftYoUHoeX5KilBpelSL+rVmBsuf4tQX1w
 QhFw==
X-Gm-Message-State: AGi0PuaYK1bGw1l+13CmNKFI+xi2e1Ma8dckr2BF3EZEhdUoVmIAhYfO
 ZFtbmZSTAKbIRdLcsE/FVW0=
X-Google-Smtp-Source: APiQypJDwC+Gny1s84W5JXa1L8IfqS3GJmXQClSE3zOki0vGM7qD7qv/PJZbyVchsPWkUmDpcRLEww==
X-Received: by 2002:a2e:9682:: with SMTP id q2mr2201845lji.289.1586927938381; 
 Tue, 14 Apr 2020 22:18:58 -0700 (PDT)
Received: from localhost.localdomain
 (dc7t7ryyyyyyyyyyyyybt-3.rev.dnainternet.fi. [2001:14ba:16e1:b700::3])
 by smtp.gmail.com with ESMTPSA id o6sm10520618lji.15.2020.04.14.22.18.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 22:18:57 -0700 (PDT)
Date: Wed, 15 Apr 2020 08:18:49 +0300
From: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
To: matti.vaittinen@fi.rohmeurope.com, mazziesaccount@gmail.com
Subject: [PATCH v10 03/11] power: supply: bd70528: rename linear_range to
 avoid collision
Message-ID: <b523223f3ba5e570bb9d2ef197db24c5ea88319d.1586925868.git.matti.vaittinen@fi.rohmeurope.com>
References: <cover.1586925868.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1586925868.git.matti.vaittinen@fi.rohmeurope.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_221859_828267_680DD0CE 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mazziesaccount[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.193 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Andrei Stefanescu <andrei.stefanescu@microchip.com>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Linus Walleij <linus.walleij@linaro.org>,
 Brendan Higgins <brendanhiggins@google.com>,
 Sebastian Reichel <sre@kernel.org>, Andreas Kemnade <andreas@kemnade.info>,
 "Angelo G. Del Regno" <kholk11@gmail.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 linux-samsung-soc@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Axel Lin <axel.lin@ingics.com>, Gregory CLEMENT <gregory.clement@bootlin.com>,
 linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Markus Reichl <m.reichl@fivetechno.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 Andy Gross <agross@kernel.org>, markus.laine@fi.rohmeurope.com,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>, devicetree@vger.kernel.org,
 Charles Keepax <ckeepax@opensource.cirrus.com>, linux-omap@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-arm-msm@vger.kernel.org, Richard Fitzgerald <rf@opensource.cirrus.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Baolin Wang <baolin.wang@linaro.org>, Sangbeom Kim <sbkim73@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 mikko.mutanen@fi.rohmeurope.com, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, patches@opensource.cirrus.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Follow-up patches in this series will add a generic struct
linear_range. Rename bd70528 internal struct to avoid collision.

Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---

No changes since v9

Please note, This patch needs to go in before linear_ranges is used by
regulators because the struct linear_range becomes visible to this
driver via the BD70528 MFD headers which include the regulator headers.

Mark, is it Ok for you to take this in your tree as well?

 drivers/power/supply/bd70528-charger.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/power/supply/bd70528-charger.c b/drivers/power/supply/bd70528-charger.c
index b8e1ec106627..3b820110ecfa 100644
--- a/drivers/power/supply/bd70528-charger.c
+++ b/drivers/power/supply/bd70528-charger.c
@@ -335,14 +335,14 @@ static int bd70528_get_present(struct bd70528_psy *bdpsy, int *val)
 	return 0;
 }
 
-struct linear_range {
+struct bd70528_linear_range {
 	int min;
 	int step;
 	int vals;
 	int low_sel;
 };
 
-static const struct linear_range current_limit_ranges[] = {
+static const struct bd70528_linear_range current_limit_ranges[] = {
 	{
 		.min = 5,
 		.step = 1,
@@ -374,7 +374,7 @@ static const struct linear_range current_limit_ranges[] = {
  * voltage for low temperatures. The driver currently only reads
  * the charge current at room temperature. We do set both though.
  */
-static const struct linear_range warm_charge_curr[] = {
+static const struct bd70528_linear_range warm_charge_curr[] = {
 	{
 		.min = 10,
 		.step = 10,
@@ -398,7 +398,7 @@ static const struct linear_range warm_charge_curr[] = {
 #define MAX_WARM_CHG_CURR_SEL 0x1f
 #define MIN_CHG_CURR_SEL 0x0
 
-static int find_value_for_selector_low(const struct linear_range *r,
+static int find_value_for_selector_low(const struct bd70528_linear_range *r,
 				       int selectors, unsigned int sel,
 				       unsigned int *val)
 {
@@ -420,7 +420,7 @@ static int find_value_for_selector_low(const struct linear_range *r,
  * I guess it is enough if we use voltage/current which is closest (below)
  * the requested?
  */
-static int find_selector_for_value_low(const struct linear_range *r,
+static int find_selector_for_value_low(const struct bd70528_linear_range *r,
 				       int selectors, unsigned int val,
 				       unsigned int *sel, bool *found)
 {
-- 
2.21.0


-- 
Matti Vaittinen, Linux device drivers
ROHM Semiconductors, Finland SWDC
Kiviharjunlenkki 1E
90220 OULU
FINLAND

~~~ "I don't think so," said Rene Descartes. Just then he vanished ~~~
Simon says - in Latin please.
~~~ "non cogito me" dixit Rene Descarte, deinde evanescavit ~~~
Thanks to Simon Glass for the translation =] 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
