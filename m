Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2838F4369F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:31:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Z3Qs9B02ANUN+gskXds1rGkbLXi545rbPncst9ibZ9Q=; b=S+a
	iObQii+Jd1fmbDOVicwFhNaXdveIgLcx+OW8wtRSYkhdGLzs+qa9A8GNTcnZdUodEotru12zRFup8
	dYY8WRqShAQQIcQpF4z7UVmq0ZZGzdoMca2n98PZ5AJ5VfGKOps5CMawtIGLZs/L+GJTzyKbfb+/t
	6BN5Xrbcp91jND7gSgvNYYLrAM4kYwPjrL3lawnyLXeDYJVrAW37jCvDakhRr51For9AhtNnECR8A
	SVFOpmFp3eWgO/lVUloC/g7jxWId+Nw1th8oqE30sPvDngjnhZjclnztF8Pmk0m0Ipg04aYzsepLz
	VIkH/pU6xLxFB7DYn8vHYw++Aoew4Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPom-0000rL-Oc; Thu, 13 Jun 2019 13:31:04 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPl9-0004NI-Hl
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:27:22 +0000
Received: by mail-pl1-x642.google.com with SMTP id t7so5536954plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 06:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=DBRBCInmQIIrq3PA/7j6razRSFLaq/I+7XxbaFaBLnQ=;
 b=OWRs0MOvTQ94JcwvOdnbboi+qx64+ffJgswSAsQUEEOS+zc6bCDDCTgvd9pBEJYwF4
 L9vOlhYIGA5Q35OK3q5Yh69ylWmSrNMSduyPeBdgT+EcBOo8ZuiofsU4OyoSInbTMq98
 c89La+XDApUi1xILQVzFR78tZqQfgtzp9JnfmMBhiGN5p5gvzjK9UI8vPzUqS7n6ow/W
 hM9YuZ5+RQFFSWQGsav+Yb5iVQpFg4A1YFjyTMQ2ggQNXu3CJB5mIhXHXwlyeDu3k1Yk
 4OVhNfBhQcFaDSmw8cJwskcSt8R4Qj+XK2HAcJMOXS/6C2e3r06b+sMxEXEicsMyhF79
 Lf/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=DBRBCInmQIIrq3PA/7j6razRSFLaq/I+7XxbaFaBLnQ=;
 b=JpslzP/2Gqxf4nDzadPz2gEB8q6ukGM2mjo5QHwrNze+3PeJMFwZ+c4Jid7i35KirE
 kwET4tPGjlfBfObs8pX2F3zWL4tSg8fFhsiBWe7Doq/BpaQGDg5XgdxiZTscvVGTjAtM
 w4cN6Ltxjt1zv4o49C9dnYYVRhAUlezn7xXCZa57Y8J7woqSX9kiFfRlBLoEzK7uAB68
 UgPCtlfufTiJ6h8wXpVyBBp/xk2d9uhBFDLkSA6W3jVbYQ3MBGwkQ2TqEBoptuJTRHwJ
 u/9nYMSIcB1VqurVO6NR8DcyiDImCgZGN9DjUDTFfue950QHunryEZT3HzP8ReFrf4Wj
 GaQw==
X-Gm-Message-State: APjAAAU8epr+vr4Hlr/8s1b0CzDZ9HHn/gk8nbUqvMFmmzfdmHL1qvgZ
 0r+DDM5kLTqt+Dlmdf0q0iWN
X-Google-Smtp-Source: APXvYqyd2679N/PfxZ85sAdFYaSA5u2C4jSlTrIU9KwIfjTJrcqzpCjPqiE5WmFoLe+yIqqlKeqbfg==
X-Received: by 2002:a17:902:868b:: with SMTP id
 g11mr85197609plo.183.1560432438394; 
 Thu, 13 Jun 2019 06:27:18 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7141:4858:bdd9:1134:3bdd:7ab4])
 by smtp.gmail.com with ESMTPSA id y14sm1837pjr.13.2019.06.13.06.27.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 06:27:17 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 festevam@gmail.com
Subject: [PATCH v2 0/2] Add 96Boards Meerkat96 board support
Date: Thu, 13 Jun 2019 18:57:03 +0530
Message-Id: <20190613132705.5150-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_062719_674301_77CD0343 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, yossi@novtech.com,
 pbrobinson@gmail.com, kernel@pengutronix.de,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This patchset adds board support for 96Boards Meerkat96 board from
Novtech. This board is one of the Consumer Edition boards of the 96Boards
family based on i.MX7D SoC. Following are the currently supported
features of the board:

* uSD
* WiFi/BT
* USB

More information about this board can be found in 96Boards product page:
https://www.96boards.org/product/imx7-96/

Thanks,
Mani

Changes in v2:

* Addressed the comments from Shawn on board dts.

Manivannan Sadhasivam (2):
  dt-bindings: arm: Document 96Boards Meerkat96 devicetree binding
  ARM: dts: Add support for 96Boards Meerkat96 board

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/imx7d-meerkat96.dts         | 389 ++++++++++++++++++
 3 files changed, 391 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx7d-meerkat96.dts

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
