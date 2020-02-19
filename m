Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F907164D66
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 19:10:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/FyJgdSwamAtAVLMamAURBO7WRE5BIXTwnsV3V9oVI=; b=gVIXkpVo2uo8oX
	yyXGkkA+zu7TalGrsJb3PkCcSHImnScEkGUjCoMW7Yg22QlE4zE/xXl5NfBn52Ufsz3xirms0NwrD
	X5fMw3nx1clpMqgkFdsKSqoCQptplZ4YcxSPXg7gUNneFyGu8iPTAVSPVYe6lt3VN2IkQd08mSd+f
	/Ud4Pc2FbV3FsAzGw0GUIdvJEjfavNBDLHRbcr0Jb408RN8kC1aH+6klMGwtYT+nQidWcyGbXoopa
	8AjdQEoxKTjcOxBo7Sbn55askN2EAyNICsXtZM97FTVU50GyPDLJS59Z+NMuCb6kOkap046+SpVfa
	y13myBcECBYluyRYBq7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Tnc-00009g-R7; Wed, 19 Feb 2020 18:10:16 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4TnL-00008o-KF
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 18:10:00 +0000
Received: by mail-lf1-x12d.google.com with SMTP id z26so825176lfg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 10:09:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BzO//zfGvvmDXWFrnnBIQSHTy0ns1CXRccR7GcbPRlo=;
 b=JUP4ZDsbz/nmLgQNFKk7ZZas36mU5d/63thVdthtw/+JDzFZLmm9Vj+mqjzrSmschw
 YeksJAFYmxokDcgysmGHTfXsO1dvAp4X3RkAM/LTau78Zl4JXaagptPoIM5sLuCnoR1/
 6SVcUuwkb3URjB/vNyQs+ScYqRbjB5A3ZvCVU/WNFaQ6AZbCIuvu/d7zFsR+CHemuo/1
 /J0m3A2dlLsN9LGRdWNnJLdcnekETD9HMfDuuRkUH/8KVdzir+9mXlGmaigPhZfexv3Q
 kWqGXwKbEA1h1pOGvwi+PSsa885Ip0sRniQ8kS6jEBG7R1m3tD4vphMjWc3mC25hkdzu
 /uhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BzO//zfGvvmDXWFrnnBIQSHTy0ns1CXRccR7GcbPRlo=;
 b=DvXO3OHTBUpg4f/YT8ISLTbBu24JQ+sExk1vXfaZGh+snyHklfKZwYI2YtF6WbJJ1Z
 MduiB73r4EkBPJS5bkiyUs2rHUi2ZLrPuISoQKTuj4PUS0iVCqo7mL6uNilqVMNAutJm
 H54747Lf9Is8HxKKBRS4QXNta4oQPuDSj4wCA3haWd3hLyfBAOE+7ltnnHnAV3OS9N/G
 LVxDw1dHxzkpSxhpuIqUUy/ZaOOALVd8LaFR/5mEZie378n3lUltIUBBpusOOFYBLNHO
 Zbo7RPOvnwI+3ZZ4IXpfM7t0dfUoMUKWsFwodmoVTTTzLJrp5SYak8gH4RDUwL06HqPT
 OJpw==
X-Gm-Message-State: APjAAAUXkYZo16wdcM/VtAo07OL9UGSY4lUobHmB76BgAB8UPHXEux74
 DpjNT9Pcwp2rP3lTyH4Coes=
X-Google-Smtp-Source: APXvYqx/ns6qi730SvnAx7FkLa5GwKNXVqSyJ3M9ldEtC/E9MqH1QWbqSJudFSiqcFW6FXpQjYj21w==
X-Received: by 2002:ac2:5596:: with SMTP id v22mr14129478lfg.200.1582135797136; 
 Wed, 19 Feb 2020 10:09:57 -0800 (PST)
Received: from localhost.localdomain ([5.20.204.163])
 by smtp.gmail.com with ESMTPSA id 14sm183942lfz.47.2020.02.19.10.09.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 10:09:56 -0800 (PST)
From: Andrey Lebedev <andrey.lebedev@gmail.com>
To: mripard@kernel.org, wens@csie.org, airlied@linux.ie, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: PATCH v4
Date: Wed, 19 Feb 2020 20:08:53 +0200
Message-Id: <20200219180858.4806-1-andrey.lebedev@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200210195633.GA21832@kedthinkpad>
References: <20200210195633.GA21832@kedthinkpad>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_100959_665498_39CA12B9 
X-CRM114-Status: UNSURE (   6.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrey.lebedev[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-sunxi@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Address all outstanding review comments.

Maxime, please confirm I've got "document the new
compatibles" part right.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
