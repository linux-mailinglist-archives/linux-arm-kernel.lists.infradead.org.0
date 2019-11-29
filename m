Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EE110D9EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 20:06:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oY8D26eH0XLjzrV+K98wKOy20x8Mb5aEGyBQoG/OrqU=; b=AMn
	BWxm9UmnlB6DFZzCrFhBZC3r6TNrwIUCOw85krO6mGs4ooVsMhgGe7iyPh/qh4dvU+2/n39WcjuQu
	X52aL/mhdOr3ynmDWM3g6LFB+N52gl9kH9RjZBbua1GsnSNf3ThBIkFscIdxu09vGpEgdy1PzuDpC
	HzpW2VG1kktJsnAvHWxTjlXkMAMn7yEor1IW+2K8h/gGv7HOG0/atiCpDPJ8zw+zfNHzzL+8648Yr
	ACTGQUYP03mOWaF3VKIKcJpRmfNEpOmAzCfv+HHEFt/KVIfpd72bYAQ0qCLwLdzu1IkMvpp5FQAKt
	/z0VHRicCstQKjdj5pPD69IY92pBCOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ialag-0006Do-2b; Fri, 29 Nov 2019 19:06:06 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ialaX-0006Cn-BD
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 19:05:58 +0000
Received: by mail-pj1-x1042.google.com with SMTP id y21so13637215pjn.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 11:05:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Tput1dndwwpf2AerG7ygIFUf2lPuIOL1u2Rfqh3NfVk=;
 b=BvzraM8CKAkmCxfYac7IabmSaA3XEhDd8HpdyMp+V6oEIXnvMQ0HYoaW8qLnxl1Bu5
 tdCjjxeqp+1ojRgWyB0OoM6qU9D3D0jDR5RlY+o2UwpnG6igqT/FSRv/uIULFVtUuJh2
 WiNVnZbAIkyKXHxwBgcJl+Fj1e8+EOuOTj/BkpzkuFND2LlNyHcbjVO64ij5AALRU+g/
 Lt87Iaq2d5y1Xc0iUzbnFBU+13p//CszEE0d7yQaHTNAOFN7PAwEpfnLtOcR6ZpP1ZnE
 7lw7T3rVc1h4Wr6Icxk0y38/JpYdb2+oFC2z+C/Fa2bP7ew8XXKD4FJH4jWle+BK1vX3
 eSkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Tput1dndwwpf2AerG7ygIFUf2lPuIOL1u2Rfqh3NfVk=;
 b=Bxdd7CnuJE9FJt2zCRIQwjYlPZYhRaGOjvDXqgvNFFACYrHz97m/7kgs6UhDx/1VWn
 3NjkrbbZ0RNjFT9+9bnHgstOMhYKBAZen91iJR0ruA3+sQ98FWyFcxIbFRA7lliTEhmy
 scRF/eay61/M8+IOs55BpqFVzOTLJAcb2lIrygVjXUD8f4syGKSPLBFKZHVhYsbrLvWz
 7BgOOlgIe8mKlgA6vTBg4oUP85x1ZrDZVpJx9vX0L+uRXQc37b6dObMQmGLo3B+kph3x
 yiVd6gLucCQbuFdyadDyBsq0ApKZMbh/th9ECrFbHYCuevFO00AHiBSnDWMC5euNATc9
 qFmw==
X-Gm-Message-State: APjAAAUMIYLNdLbnKPyRyJ9rUAZZgLGYN4qvzimKMD9tliIBZHJahlT4
 X4WI3K/0cCOwmazW5GGMjKCH
X-Google-Smtp-Source: APXvYqzeLaLk5/vOg6eNz6870rE+kdGHOlazQZ3zrqxCvca4ydWQaL+eH7v+1YZ7kIhaW1TedvQLdg==
X-Received: by 2002:a17:902:fe06:: with SMTP id
 g6mr15355459plj.52.1575054353473; 
 Fri, 29 Nov 2019 11:05:53 -0800 (PST)
Received: from localhost.localdomain
 ([2409:4072:638d:cc55:d006:f721:cde2:1059])
 by smtp.gmail.com with ESMTPSA id h9sm25159974pgk.84.2019.11.29.11.05.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 11:05:52 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH 0/5] Improvements to IMX290 CMOS driver
Date: Sat, 30 Nov 2019 00:35:36 +0530
Message-Id: <20191129190541.30315-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_110557_384939_11D3CDA8 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This patchset adds improvements to the existing IMX290 CMOS driver from
Sony. The major changes are adding 2 lane support, test pattern generation,
RAW12 mode support and configurable link frequency & pixel rate.

The link frequency & pixel rate combinations depend on various factors like
lane count, resolution and image format as per the datasheet.

Thanks,
Mani

Manivannan Sadhasivam (5):
  media: i2c: imx290: Add support for 2 data lanes
  media: i2c: imx290: Add support for test pattern generation
  media: i2c: imx290: Add RAW12 mode support
  media: i2c: imx290: Add support to enumerate all frame sizes
  media: i2c: imx290: Add configurable link frequency and pixel rate

 drivers/media/i2c/imx290.c | 328 +++++++++++++++++++++++++++++++------
 1 file changed, 277 insertions(+), 51 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
