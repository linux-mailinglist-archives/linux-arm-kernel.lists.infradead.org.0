Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CBE11289D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 10:54:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=12FCnb+SgujR0Z1Dgg6D30jIwJMw9hcYQ3wNX9F9O7s=; b=M5o
	blNAZhNp1sgnt9vaWsS1kEet1Yk9jwKnkxlTA1s2P9TiORddnf7AJWn3iooVqIzR34/cAnTE2Ce1l
	hw9zyHZr580Q7w+CAqQzHPyG+7TOcotDUiLaUAW/oG6Fktr4xC8VUExbUE86LtsNw9X+WXkYEaM8+
	rsw7DmTY+mVUXGWdAhpZSZGhTeWqZePZ3yLeiry2tyHO355ciFwma0S5ImJaqvAI79L+zOVkjphFY
	7Pck8E/M/6dZCXxhzVM9CqLHM6e/0QLF5qh8M8bPfClYIoRcLVKKsMN5LxaqXnWcCeg+ulJsDCt2N
	1ix9WD5EeEHB8eFWyVjrGLlfH37IuYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRMa-0003vw-74; Wed, 04 Dec 2019 09:54:28 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRMP-0003v7-SC
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 09:54:19 +0000
Received: by mail-pl1-x643.google.com with SMTP id ay6so2969248plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 01:54:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=sy0TPVo2jYoLirOgnD0I5TlsFYusUGHr86X3IrbRM40=;
 b=jkobSOBwsTsp2VlFUJmtvhD8RQntjjl4FzcEViOOz1/cDyieTGtkwGd/ljvQH9vaRQ
 4mpmbSOlS7RVfutVY5OB/EJFLV/Ca0P6LDC0J6nStZf0JMn0BD7FhBWxiiCH9he1NWvp
 rdc8S0j8+qTa8+HCfQZOI3BoWy5lQB4lt/72qAiaJO14mt6HIdS2Ji2Bn0gD4iOwJbF1
 UN3poic2F4bR+qxO7CLO3CjC+GEeMm4/osXgDX0gkVinxe/NvB6Cf30IH8C6FwlpamXv
 mDDzjMAPHK92PMd1uvekFEad8qhtBbxvkqQy4xJ9ll6hUJTzRy3xN9j3Nu23kUFckVJj
 OueA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=sy0TPVo2jYoLirOgnD0I5TlsFYusUGHr86X3IrbRM40=;
 b=P/SuRWw3yCi+PNcls7e7iYlkd/WW7jcX/CBpPqOtT7pswZCJCodVaRin/G41TwZ35U
 KPAIXDGiQailwPGKtYBynnaT5Ej32J97WLNK3ehEHlrUwtV64sJCbcoMzJAtdQxhLNt8
 wnqZ9D0kVi8XdJDHHCDWNb+0dCNbIK4BwS2zrbkcFG6/ZVE+RMd4fzid+UsbGeru5UXK
 h/Dj0aAAyBHAOeJ/3nTGHrbV3+eMig2F+LXufEHb7l7py3vZrofhJ3+FWhgbtdo+4EN3
 D+7P0e8NMKTLh8KonKoX3O+8fWbDfkhtz6SNCQ36LBwUo9Orqdz1fAd9fGGEvww6hv7n
 7lrQ==
X-Gm-Message-State: APjAAAVUZMCRSpMSTe/F+3TEtjYA/Dt9Enln+BNZkQbN/wkvQrXEn3X/
 naFAmE1py84D69cwifzBTDgTjrY9
X-Google-Smtp-Source: APXvYqxo3ED3pddFuvzNz/kwQfbUAJnhiSak+AuYf3/mHFipcLJYTWEitA6+QsXxaIQk3P8mDxqRXw==
X-Received: by 2002:a17:902:b48d:: with SMTP id
 y13mr2561717plr.195.1575453256706; 
 Wed, 04 Dec 2019 01:54:16 -0800 (PST)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id k101sm5941687pjb.5.2019.12.04.01.54.14
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 04 Dec 2019 01:54:16 -0800 (PST)
From: Baolin Wang <baolin.wang7@gmail.com>
To: ohad@wizery.com,
	bjorn.andersson@linaro.org,
	baohua@kernel.org
Subject: [PATCH 0/3] Some improvements for SIRF hwspinlock
Date: Wed,  4 Dec 2019 17:53:30 +0800
Message-Id: <cover.1575452516.git.baolin.wang7@gmail.com>
X-Mailer: git-send-email 1.7.9.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_015417_906960_67D84BA3 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (baolin.wang7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (baolin.wang7[at]gmail.com)
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
Cc: baolin.wang7@gmail.com, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch set did some improvements for the SIRF hwspinlock driver,
including changing to use devm_xxx APIs and removing some redundant
pm runtime functions.

Baolin Wang (3):
  hwspinlock: sirf: Change to use devm_platform_ioremap_resource()
  hwspinlock: sirf: Remove redundant PM runtime functions
  hwspinlock: sirf: Use devm_hwspin_lock_register() to register hwlock
    controller

 drivers/hwspinlock/sirf_hwspinlock.c |   46 ++++++----------------------------
 1 file changed, 7 insertions(+), 39 deletions(-)

-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
