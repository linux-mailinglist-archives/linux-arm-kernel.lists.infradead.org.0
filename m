Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 880CE1823C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 22:21:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N9KD6maaVHKmg/dXDjZtD7CEp2PNnbFgzfX5W2EqmlI=; b=NgDANwz5Ky8LKcsjX5GKj9dDuv
	tmAmUAfbr84ZSMufha9Fk4+O8PjJM6DC/vPt+zFvJM1DM19joKjx8ODkDMW2I0hgjY25yoPphibIG
	jX8Y6fJUcOUK1Z7zZ2vsK4roxiOddrAk1MUHZWCs3NirSD4Ht8upjB+K6ij1o7Pxg5LesQxHa2rII
	rIhd92U4lreIojUD5nWESjHt/3e/6CSPIuJNSJzVlYySodIATZ+LB8vn8peSmW4SWdpZLgWjriGyQ
	4REidLP9OnrgkeRHLMya+0ZIFq1aMOkQSgCHsk2uqU8QMvXBNyGp2xayT3BbiqOQgPqApj6VIlwZi
	A+M+wI5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC8mt-0006jX-QL; Wed, 11 Mar 2020 21:21:11 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC8mD-0006HE-9x
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 21:20:30 +0000
Received: by mail-wm1-x32a.google.com with SMTP id x3so4062691wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 14:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FREDZ3YblEaCLPMZXS0PCZIExrtn5y6KJZoPOIhItic=;
 b=jSEuv23KLjQCzGog9WQ7EvS9mK876BL5KeirQ3iLRhwgy0KM7XgmaRGI+HpRL0XrhW
 YHJBKUfsDWUxfvqfqo1K8Y6TZa3/87RaKD5dE3BGZG3fpo/fgyoQRsf0OXZiyC4Fv8MY
 +i//lrdAA/3JCIC0GRqsS8I3myK2W8uLrS2/FX0MHdbfphMNMuwlf3WLPGuZ55tqjdUm
 UHev6aQbYRythbQaIjArAMstMZqqC7sMGLftPtDYqP2BMQFlP30Zz4pU9Vkk2wKlFbms
 Je9Z59r9cX9RzhXxp5yBfKQVQkg2yCMlS8AZBke2wMi0G8MZgKlQ0EVfe/Lvh96la0sV
 i+lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FREDZ3YblEaCLPMZXS0PCZIExrtn5y6KJZoPOIhItic=;
 b=phX+ZTHJ3wqc5eabx2+J67RhoNUU46VmqL/v4vayKP9Ngc9B2YbdhYOBEcCy0Zvjcj
 S1ZbH87SGWssGInX5oawEUPVQdhufdWbMJ7kdVra5rF4msBGuUKBzVPi+4lK+ZmrWNod
 kYzL0hpFX2z8CC44GNGKdnKyt/68NJXMitaj7XGG2M/w39nljMEBZjFZWhQq0OVt1rq6
 9QQh9JqxO/dfjcTNbX3s+okV23nT/IVfTYw6gWKOU33Z2DngCpCUZahvmRUdnFnIriOi
 7jMF7Jdg1t7yViWbKa5gKzDJS1zrVaRN97UzV0OFycJWl9cXNQBj4xRU8n23lDWZShHE
 SPAQ==
X-Gm-Message-State: ANhLgQ0qVaWMGL5GSb23IyQvzpVdXSeQ4UOOzjRRSA+dqc6zT7f9tHaK
 0e0yi82CjQq1SzO/noDXviAA9XMG
X-Google-Smtp-Source: ADFU+vtMEqSZ9LIvFCeemZ0yaA39b2U5CQz0TGxJEndiZErL7z5Z68ME7UDQHykIXIsxBQ9EG7tl0w==
X-Received: by 2002:a05:600c:2102:: with SMTP id
 u2mr589527wml.99.1583961624247; 
 Wed, 11 Mar 2020 14:20:24 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p8sm3014032wrw.19.2020.03.11.14.20.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 14:20:23 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 3/4] Broadcom soc changes for 5.7
Date: Wed, 11 Mar 2020 14:20:11 -0700
Message-Id: <20200311212012.9418-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200311212012.9418-1-f.fainelli@gmail.com>
References: <20200311212012.9418-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_142029_370630_D043893D 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, arnd@arndb.de,
 khilman@kernel.org, bcm-kernel-feedback-list@broadcom.com, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.7/soc

for you to fetch changes up to 824ca3a2cc0b500adac7fcdc79d6a67a4f7802c4:

  ARM: bcm: Drop unneeded select of PCI_DOMAINS_GENERIC, HAVE_SMP, TIMER_OF (2020-03-10 10:58:26 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs changes for 5.7,
please pull the following:

- Geert drops redundant selects for Broadcom SoCs which are already
  implied by ARCH_MULTI_V6_V7

----------------------------------------------------------------
Geert Uytterhoeven (1):
      ARM: bcm: Drop unneeded select of PCI_DOMAINS_GENERIC, HAVE_SMP, TIMER_OF

 arch/arm/mach-bcm/Kconfig | 8 --------
 1 file changed, 8 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
