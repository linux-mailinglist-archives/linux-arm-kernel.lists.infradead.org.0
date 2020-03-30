Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C7119881F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 01:21:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRV0tBT16SsBIU7miAg1b64FlAeh0F0dG9UnAUznB04=; b=RK7AL9bVXErTsh
	yBQiFeQMVIoPRJj/sysewZpjzNN6Uj+E72YaBlg6NkqKyDUareJu/jvhGrVj0r3xg2UvPEmOFxZH4
	Z5uwrGAx6WzUZVU2K6i02cEXFbyQ3pX8rKnQVCDZCy/m980s7rbZbeiGsUHlEwyQb8/Y7I8VC6TOQ
	so4YBl7GgY9dZY62AvRoj02WPN6jX6qxgTSrheTXEc1s6m18HQbsErAvt8sQLpOu2/DE4wl/VIxOa
	UKkPsOLpcGzY63gv9Si0FqegcKIKupmM+2v8RbKfIgUN2AGgWaDrIAIBWrQSSoIfBZkdYKJFYoYiq
	xhnCT2c9FfHZDR1vKERA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ3j4-0003dU-I6; Mon, 30 Mar 2020 23:21:50 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ3it-0003cv-6z
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 23:21:40 +0000
Received: by mail-io1-f65.google.com with SMTP id q128so19693112iof.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 16:21:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dVnw6FbVGtknI/LXqWPEB0fCBLV8ok47WPEsicGJKgc=;
 b=aw805jvuzLKeq3V1Z6hfeHf3Zb5xPeJhqjjuxyrQcWgDEzjnBFQ/nJfsNUs30SitUX
 ihnlpw5cqCsufk4+mMvpP/cJs2kd3uXeoioa+Q/C7UtFlKV0mLCYHi9sDQrSfPZRNexR
 ZjmMO+/rAB1daDXiLAcHz/VVuX8425fuYd3X6Rr24S3IytInpLsakWcyM7yhYxkHQnK5
 1I7wSOonQASHKjPzFd7pIds9RJb3Cv+hYgwW8m6Ht4a3/LNAKkjBvBz4Hkqj4naj8uPE
 Ph3J4IcxepMB6j/l5AVOpjIR3HKUY1E8j1RzNge861JgsNNxyfgMGLaj4K9nNScygvjJ
 IXUw==
X-Gm-Message-State: ANhLgQ25lE061e8goa0v3fWjy5WdABkDG6hlgjHLUeIYzUZIQ647399o
 DCcVJxhnqUmf3NXPBnacUw==
X-Google-Smtp-Source: ADFU+vvLjBYxSJO2if2o0gwQCWJ+uAWhliFrL8r8v9ZHNOquhf0xFKTFptjnxSL3vxEJ724p7DSufA==
X-Received: by 2002:a5e:c104:: with SMTP id v4mr12880353iol.122.1585610498381; 
 Mon, 30 Mar 2020 16:21:38 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id i16sm5401647ils.40.2020.03.30.16.21.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 16:21:37 -0700 (PDT)
Received: (nullmailer pid 18111 invoked by uid 1000);
 Mon, 30 Mar 2020 23:21:36 -0000
Date: Mon, 30 Mar 2020 17:21:36 -0600
From: Rob Herring <robh@kernel.org>
To: Daniel Baluta <daniel.baluta@oss.nxp.com>
Subject: Re: [PATCH 5/5] dt-bindings: dsp: fsl: Add fsl,imx8mp-dsp entry
Message-ID: <20200330232136.GA18056@bogus>
References: <20200319194957.9569-1-daniel.baluta@oss.nxp.com>
 <20200319194957.9569-6-daniel.baluta@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319194957.9569-6-daniel.baluta@oss.nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_162139_248421_2A5F39AC 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: linux-arm-kernel@lists.infradead.org, pierre-louis.bossart@linux.intel.com,
 daniel.baluta@gmail.com, Daniel Baluta <daniel.baluta@nxp.com>,
 kai.vehmanen@linux.intel.com, devicetree@vger.kernel.org, festevam@gmail.com,
 s.hauer@pengutronix.de, yuehaibing@huawei.com,
 ranjani.sridharan@linux.intel.com, krzk@kernel.org, lgirdwood@gmail.com,
 robh+dt@kernel.org, broonie@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, alsa-devel@alsa-project.org, shawnguo@kernel.org,
 linux-kernel@vger.kernel.org, sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Mar 2020 21:49:57 +0200, Daniel Baluta wrote:
> From: Daniel Baluta <daniel.baluta@nxp.com>
> 
> Minimal implementation needs the same DT properties as
> existing compatible strings. So, we just add the new
> compatible string in the list.
> 
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> ---
>  Documentation/devicetree/bindings/dsp/fsl,dsp.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
