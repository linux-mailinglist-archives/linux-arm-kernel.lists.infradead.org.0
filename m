Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 902CD172897
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 20:29:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RonSTgmeKyz3lranQdH8REJeKYuWK5LHXTptKszqKvM=; b=ZNjWtXWt5R2J/bZOYMsZBpZlk0
	bRZe2D/TD1KtbWpWZOjcPjgZ/FSZ0K53inyvIgS6QRjtp7DaLJVT/pVgfjb87tOCrh/NnhD6JUWAW
	4pZZXQQfsntfsGVeRViKP2RUNkGbYUGPRX8rCJpvbFQGVkJNjj3OqlYgMUUFbDgAcG9/YBjKjROD0
	6ooGzL4374UFcMonpwXDuS5uX2PmUmyOIctb+n/4PDpvMxk+84q37d5gMvDkAABiNUNCnbFCZjYn2
	uVTXZFv8DITQDox+Om84k9xMqMHCmvQMtk43wVtpVOIGCcYulpJzyl/L20SJ42F7b7T2YCZpTP+Ji
	MelWl+hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Oqv-0001qY-8u; Thu, 27 Feb 2020 19:29:45 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Oqh-0001q8-J4; Thu, 27 Feb 2020 19:29:32 +0000
Received: by mail-pj1-x1041.google.com with SMTP id 12so207441pjb.5;
 Thu, 27 Feb 2020 11:29:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4mWZOWxqMqFGYlHgC20I5f45kMQOVBGxRXWZS5VDQhw=;
 b=eDH9LWjtmUJgPL0c9WBmAAAXhY6qd3GY+VcEe7pf7LaSunJ+DqiVoKI/Ee7Ko1GqXH
 wh9M8ju5a6QSzz1OzPeBDYISXzYKmK/9u9BC1S4WHjqHBsK2vAkPLbBE6FtubofEYisN
 /fBRCOkiivszv1So2YCfE18J9Y8fgJGHsObmsWP9RB487DcVW4kjzS4y+xFlys4qrlZZ
 EPJX4DzCjs2jxxr9gHbVY32jxyXGS/B1LRlfU4NC2shxoeuVb53EZkU21N58Sui1nnRN
 f80H6fdB0ubC4+qkKsOzzT/BP4if7h1vmsQuda7eohxdcVAcQJSlN4V60ZVoSQ0jxAzN
 GRsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4mWZOWxqMqFGYlHgC20I5f45kMQOVBGxRXWZS5VDQhw=;
 b=U/rOOLOsNOQPpapTDtEloyJ7QcBAHhT3tGUj8Qhn73Kdntjxiolxs3KJd2huDnM6hZ
 PJZMp+X26Qcq7S05sYSocsUNEeWjxBnMLFwojUmWYRTPM1nGZCCbUX9HelU7Tx4EGgZn
 IqsEmzIlkTA+nJqwYd5eLwUC/NZjNyH6f69Bf9iQac9KsYVTWYqX54QaLhxb1uG3NKlR
 GSnlckcd1Z3AQtVLrjMktO5K0VkEbnFpsk3gvH9Q7WhccI9orH1GsMzfLL4bHfIKNMgH
 4UgtFmXWvGdU3uyFZPqtxPj3FuA9KLl8t0gUpua674H0JBgP9RCRKm8wnvYc8q+UyYZh
 dTEQ==
X-Gm-Message-State: APjAAAUdMka/brXAd/gwB43owafLP+4CrrDqscbWsQHXckt8xlIXI/+x
 3pXCLaweMCmPoVe4piFyRJE=
X-Google-Smtp-Source: APXvYqxB30WhiAHOsoGPX3m9tyF7Kcyg2lSUuN3QRYUdLa+GfTKuywjBgV50zz2I2xegy/CaGHbmMQ==
X-Received: by 2002:a17:902:7009:: with SMTP id
 y9mr329848plk.254.1582831770959; 
 Thu, 27 Feb 2020 11:29:30 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id t65sm8220450pfd.178.2020.02.27.11.29.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 11:29:30 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <stefan.wahren@i2se.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Subject: Re: [PATCH] ARM: dts: bcm283x: Add missing properties to the PWR LED
Date: Thu, 27 Feb 2020 11:29:29 -0800
Message-Id: <20200227192929.17214-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <1582480985-6773-1-git-send-email-stefan.wahren@i2se.com>
References: <1582480985-6773-1-git-send-email-stefan.wahren@i2se.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_112931_632515_2C23937A 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 23 Feb 2020 19:03:05 +0100, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> This adds the missing properties to the PWR LED for the RPi 3 & 4 boards,
> which are already set for the other boards. Without them we will lose
> the LED state after suspend.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Applied to devicetree/fixes, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
