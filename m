Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F0E6268A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 18:42:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UlDcghT3SLtWpJuGcjQd3ryyxULakaMsDOwcMnAC8S8=; b=HGhz6BX4UTO8Tv
	1Ub2UvtX8fz/biMb+/pyblBk93oCvxUSi5WmTX0EKLe5gGUjauirBa3bJEyDe6NkIpX7dA/ZEEvni
	1YrYThutPJdItQOPuPxqBQ04Mhcdi0UqjFYjzZBbh+tWQjk4uX7kH24v284+WFbvBkb7NipHLBjAn
	RB2gahqsgUeFz2JaAsd2jGCyNQrI9mPNCJmLAfawLJmG+6eZU8HPH2ygoylH92sbI0s3K6UB8UB6+
	8VuRe23cME8KcgjzJV9OA9knxgGSZIRphrEdddxdVM/KV2TK3jNsfvNBGmm6ECCvFYGKtEZyCEZhH
	1x2HpYVGHh7gNLUy11ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkWiZ-0002yW-C8; Mon, 08 Jul 2019 16:42:19 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkWiL-0002y3-Gd
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 16:42:07 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 979F920BC5;
 Mon,  8 Jul 2019 18:42:02 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 72279208E6;
 Mon,  8 Jul 2019 18:42:02 +0200 (CEST)
Subject: Re: [RFC] SW connection between DVB Transport Stream demuxer and
 I2C-based frontend
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
To: I2C <linux-i2c@vger.kernel.org>, linux-media
 <linux-media@vger.kernel.org>, GPIO <linux-gpio@vger.kernel.org>
References: <5e35b4fb-646d-6428-f372-ee47d7352cd6@free.fr>
Message-ID: <4b9c5a48-aaed-5f1f-1835-167fcdcb7655@free.fr>
Date: Mon, 8 Jul 2019 18:42:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5e35b4fb-646d-6428-f372-ee47d7352cd6@free.fr>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Mon Jul  8 18:42:02 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_094205_848991_D9308DDD 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Peter Korsgaard <peter@korsgaard.com>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, Wolfram Sang <wsa@the-dreams.de>,
 Linus Walleij <linus.walleij@linaro.org>, Brad Love <brad@nextdimension.cc>,
 =?UTF-8?Q?Jonathan_Neusch=c3=a4fer?= <j.neuschaefer@gmx.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Antti Palosaari <crope@iki.fi>,
 Simon Horman <horms+renesas@verge.net.au>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Olli Salonen <olli.salonen@iki.fi>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/07/2019 13:08, Marc Gonzalez wrote:

> PROBLEM #1
> 
> The media framework requires that the TSIF and demod be "tied" together,
> by calling dvb_register_frontend(). If I do that in tsif.c, then I need to
> get the frontend pointer from the demod at some point. There is no such
> callback presently. Since si2168 lives on an I2C bus, I can get a
> struct i2c_client pointer, through the DT phandle. But some kind of
> abstraction is missing to query the i2c_client object to make sure it
> is a demodulator and request its frontend pointer.
> 
> For the time being, I have added a very generic pointer to struct i2c_client
> but I feel this is not quite right... (though it gets the job done)

As far as PROBLEM #1 is concerned, I think I have a better solution;
one that doesn't involve messing with struct i2c_client.

Basically, we embed a common struct in every demod driver, at the
beginning of their private control struct. That way, demod consumers
have a generic/common data type to inspect, and don't need to know
the specific demod they are working with. (I left the removals in
the diff below, to show the two proposed solutions so far.)

@linux-media maintainers, I think this solution is acceptable for
mainline, right?

Regards.



diff --git a/drivers/media/dvb-frontends/si2168.c b/drivers/media/dvb-frontends/si2168.c
index 726bb6759315..692f3207cd9d 100644
--- a/drivers/media/dvb-frontends/si2168.c
+++ b/drivers/media/dvb-frontends/si2168.c
@@ -666,12 +666,6 @@ struct si2168_config si2168_config;
 struct si2157_config si2157_config;
 struct i2c_client *tuner;
 
-static void *get_fe(struct i2c_client *client)
-{
-	struct si2168_dev *dev = i2c_get_clientdata(client);
-	return &dev->fe;
-}
-
 static int si2168_probe(struct i2c_client *client,
 		const struct i2c_device_id *id)
 {
@@ -700,7 +694,7 @@ static int si2168_probe(struct i2c_client *client,
 		goto err;
 	}
 
-	client->get_something = get_fe;
+	dev->common.fe = &dev->fe;
 	i2c_set_clientdata(client, dev);
 	mutex_init(&dev->i2c_mutex);
 
diff --git a/drivers/media/dvb-frontends/si2168_priv.h b/drivers/media/dvb-frontends/si2168_priv.h
index 804d5b30c697..2e69080f8a1c 100644
--- a/drivers/media/dvb-frontends/si2168_priv.h
+++ b/drivers/media/dvb-frontends/si2168_priv.h
@@ -22,6 +22,7 @@
 
 /* state struct */
 struct si2168_dev {
+	struct dvb_demod_common common;
 	struct mutex i2c_mutex;
 	struct i2c_mux_core *muxc;
 	struct dvb_frontend fe;
diff --git a/drivers/media/platform/tsif.c b/drivers/media/platform/tsif.c
index a0118c2ee870..c13fa19c9779 100644
--- a/drivers/media/platform/tsif.c
+++ b/drivers/media/platform/tsif.c
@@ -237,6 +237,7 @@ static int msm_tspp_probe(struct platform_device *pdev)
 	{
 		struct device_node *tsif_node, *demod_node;
 		struct i2c_client *demod;
+		struct dvb_demod_common *demod_data;
 
 		tsif_node = pdev->dev.of_node;
 		demod_node = of_parse_phandle(tsif_node, "demod", 0);
@@ -244,10 +245,8 @@ static int msm_tspp_probe(struct platform_device *pdev)
 		demod = of_find_i2c_device_by_node(demod_node);
 		if (!demod) panic("of_find_i2c_device_by_node");
 
-		/*** TODO: Improve callback naming & handling ***/
-		if (!demod->get_something)
-			panic("Wrong i2c_client");
-		my_dvb_frontend = demod->get_something(demod);
+		demod_data = i2c_get_clientdata(demod);
+		my_dvb_frontend = demod_data->fe;
 		of_node_put(demod_node);
 	}
 
diff --git a/include/linux/i2c.h b/include/linux/i2c.h
index 5fca596e0dd0..e982b8913b73 100644
--- a/include/linux/i2c.h
+++ b/include/linux/i2c.h
@@ -295,8 +295,6 @@ struct i2c_driver {
 };
 #define to_i2c_driver(d) container_of(d, struct i2c_driver, driver)
 
-typedef void *generic_func(struct i2c_client *this);
-
 /**
  * struct i2c_client - represent an I2C slave device
  * @flags: I2C_CLIENT_TEN indicates the device uses a ten bit chip address;
@@ -330,7 +328,6 @@ struct i2c_client {
 #if IS_ENABLED(CONFIG_I2C_SLAVE)
 	i2c_slave_cb_t slave_cb;	/* callback for slave mode	*/
 #endif
-	generic_func *get_something;
 };
 #define to_i2c_client(d) container_of(d, struct i2c_client, dev)
 
diff --git a/include/media/dvb_frontend.h b/include/media/dvb_frontend.h
index f05cd7b94a2c..087486bc027e 100644
--- a/include/media/dvb_frontend.h
+++ b/include/media/dvb_frontend.h
@@ -73,6 +73,10 @@ struct dvb_frontend_tune_settings {
 
 struct dvb_frontend;
 
+struct dvb_demod_common {
+	struct dvb_frontend *fe;
+};
+
 /**
  * struct dvb_tuner_info - Frontend name and min/max ranges/bandwidths
  *

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
