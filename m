Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D30DA11CED6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 14:54:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mZnXRllAsBCPH3s9Ix7QSOiIPjLd2Wk+I2Z/C76I8MI=; b=fOEQAvRXEYGEP1
	8F8w1wBDlt1GjtfiifXwzdumLFLnpUIpA2PGpchZIOw919Vru4KTxMYc6d++Nv78c4lIcRAaWxPA5
	5akanIfZrPpWgsxsRHwq9hAucmNSYRxFnj6KHhk1WqJiDD/Jh1j1VP3fsuXtlvpwzqpsBVsAF7Gnd
	krOCT4kKEkwIts/bHXkFIepnihAaCWzcnYU/slrFeTewDMI5jymOw0l7njHIT1NDF+si/RlWhHEp6
	JDuETxxVqcy/9GVIzLNkVDsSesQ3r+A/B1brsc07z/QkLV5UW+AO9ym94ohHcSmjmuav6B2YYKzd8
	jM8Jez2n/s9IT6qv0v3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifOuj-0002lv-CH; Thu, 12 Dec 2019 13:53:57 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifOuV-0002kY-Jp
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 13:53:45 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 4558D204CB;
 Thu, 12 Dec 2019 14:53:40 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 2CF8E200E6;
 Thu, 12 Dec 2019 14:53:40 +0100 (CET)
Subject: Re: [PATCH v1] clk: Convert managed get functions to devm_add_action
 API
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>
References: <3d8a58bf-0814-1ec1-038a-10a20b9646ad@free.fr>
 <20191128185630.GK82109@yoga> <20191202014237.GR248138@dtor-ws>
 <f177ef95-ef7e-cab0-1322-6de28f18ecdb@free.fr>
 <c0ccca86-b7b1-b587-60c1-4794376fa789@arm.com>
 <ba630966-5479-c831-d0e2-bc2eb12bc317@free.fr>
 <20191211222829.GV50317@dtor-ws>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <70528f77-ca10-01cd-153b-23486ce87d45@free.fr>
Date: Thu, 12 Dec 2019 14:53:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191211222829.GV50317@dtor-ws>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Dec 12 14:53:40 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_055343_949003_F3B8C74E 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-clk <linux-clk@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/12/2019 23:28, Dmitry Torokhov wrote:

> On Wed, Dec 11, 2019 at 05:17:28PM +0100, Marc Gonzalez wrote:
>
>> What is the rationale for the devm_add_action API?
> 
> For one-off and maybe complex unwind actions in drivers that wish to use
> devm API (as mixing devm and manual release is verboten). Also is often
> used when some core subsystem does not provide enough devm APIs.

Thanks for the insight, Dmitry. Thanks to Robin too.

This is what I understand so far:

devm_add_action() is nice because it hides/factorizes the complexity
of the devres API, but it incurs a small storage overhead of one
pointer per call, which makes it unfit for frequently used actions,
such as clk_get.

Is that correct?

My question is: why not design the API without the small overhead?

Proof of concept below:


diff --git a/drivers/base/devres.c b/drivers/base/devres.c
index 0bbb328bd17f..76392dd6273b 100644
--- a/drivers/base/devres.c
+++ b/drivers/base/devres.c
@@ -685,6 +685,20 @@ int devres_release_group(struct device *dev, void *id)
 }
 EXPORT_SYMBOL_GPL(devres_release_group);
 
+void *devm_add(struct device *dev, dr_release_t func, void *arg, size_t size)
+{
+	void *data = devres_alloc(func, size, GFP_KERNEL);
+
+	if (data) {
+		memcpy(data, arg, size);
+		devres_add(dev, data);
+	} else
+		func(dev, arg);
+
+	return data;
+}
+EXPORT_SYMBOL_GPL(devm_add);
+
 /*
  * Custom devres actions allow inserting a simple function call
  * into the teadown sequence.
diff --git a/drivers/clk/clk-devres.c b/drivers/clk/clk-devres.c
index be160764911b..8db671823126 100644
--- a/drivers/clk/clk-devres.c
+++ b/drivers/clk/clk-devres.c
@@ -4,6 +4,11 @@
 #include <linux/export.h>
 #include <linux/gfp.h>
 
+static void __clk_put(struct device *dev, void *data)
+{
+	clk_put(*(struct clk **)data);
+}
+
 static void devm_clk_release(struct device *dev, void *res)
 {
 	clk_put(*(struct clk **)res);
@@ -11,19 +16,11 @@ static void devm_clk_release(struct device *dev, void *res)
 
 struct clk *devm_clk_get(struct device *dev, const char *id)
 {
-	struct clk **ptr, *clk;
-
-	ptr = devres_alloc(devm_clk_release, sizeof(*ptr), GFP_KERNEL);
-	if (!ptr)
-		return ERR_PTR(-ENOMEM);
+	struct clk *clk = clk_get(dev, id);
 
-	clk = clk_get(dev, id);
-	if (!IS_ERR(clk)) {
-		*ptr = clk;
-		devres_add(dev, ptr);
-	} else {
-		devres_free(ptr);
-	}
+	if (!IS_ERR(clk))
+		if (!devm_add(dev, __clk_put, &clk, sizeof(clk)))
+			clk = ERR_PTR(-ENOMEM);
 
 	return clk;
 }
diff --git a/include/linux/device.h b/include/linux/device.h
index e226030c1df3..5acb61ec39ab 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -970,6 +970,7 @@ void __iomem *devm_of_iomap(struct device *dev,
 			    resource_size_t *size);
 
 /* allows to add/remove a custom action to devres stack */
+void *devm_add(struct device *dev, dr_release_t func, void *arg, size_t size);
 int devm_add_action(struct device *dev, void (*action)(void *), void *data);
 void devm_remove_action(struct device *dev, void (*action)(void *), void *data);
 void devm_release_action(struct device *dev, void (*action)(void *), void *data);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
