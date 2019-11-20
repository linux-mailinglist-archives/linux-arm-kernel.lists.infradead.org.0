Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03491103082
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 01:07:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hi4uXd9x7h0wJxdL0dsSiffd8tWxL07OFppuspV74Us=; b=JNWZMUud0s15Ra
	sgBdZouWWsddOowyrr02PsGhNwVXZvNYb+CD1la6AUG3NgtLAPQq5SDZdlm5ALa8sD/xMA4LuavvX
	E6SjECywJd6adquXOhEFcX7sB3Kxf52gY74XwHVt4+ir9hE8MwKsLCSjgij/k5kQvv1nbOPeNePna
	OJ/16yA3HsBdtk99GuEri2EzLvriECDqa25TldXQWe8ri9y814Y94pDIqV8MKDxwfwuKWIxWo/QC0
	dwTyggASL1f2vTSrJsHrYFQ1BE+oeVtduB3/nIFEo6d9uoYYHTKOudxCyLKL3lWrcUaohkss7sXLH
	v7EPhJgSFqzl9ztwirAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXDWe-00025D-27; Wed, 20 Nov 2019 00:07:16 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXDWV-00024m-Sx
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 00:07:09 +0000
Received: by mail-wr1-x443.google.com with SMTP id s5so26040933wrw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 16:07:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7u0vuDrO1PbhdaGTzNJSFWi+UDVK44G/M8ptTaBTUJY=;
 b=BG1oNkKOsdGxpHa+T5K+FowoOxps2wPnyI4wb7xyvV2j9bB71Nk6I6g0fcSfn4uS2U
 WKqlYyTJOUF3jGHQq0en/UuqiiSdcknpOURglq/HmQHThjPPY0I81XYN1SgRa+K350k9
 K7ceBV5CTkyJU3hV1y9SMYaYU6Z5jJ8WDVuOUgpYIwR1do2nu/aOCYGWUA20+ak61qHg
 kdwDQ1VFHVoy2xW+Hnc+gQLGfdLYzhzh1Y+mL4UCzRWnX0v91OHpUCMvoGr0XT4yEoQB
 YdpHHs6fHZhvH/kA9wSUM4Nwe3YAQilB3FPo2UWGbZtuEKhcu8ar6dG9ua7l0eiLjMXp
 7yTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7u0vuDrO1PbhdaGTzNJSFWi+UDVK44G/M8ptTaBTUJY=;
 b=XvRqQgjqtKs5j8GX/Cpbj+iwVr8ACVX6SbG9j42SzgpWpoaSO57vCxK/RBP0+QsvgC
 IhbnRveev0LJ/cKAHdmVOAb3Tax/SgFsYLaKYSZeEuC9MQgSxaqgt1zcotvp9Bqwa7bX
 agMkV9ofYAL1h+bOW8wDQjAvm36mBdnN1Yj5sBb8m3677RJ0XcHsC+voUZSGbtLiA4kV
 YQtEWBK0dbriRltl18MfY66TdZMuDM01TVw5rFVE9vO114Ktn1LiEY147SrTsB2VgyN0
 iHyzKLComwVh32c0IGegWAhGtGIMb+y/28UgKrzHmiLNsaUExmojrGm4uCbBNFwDZJGz
 yi0A==
X-Gm-Message-State: APjAAAXmUIujhy5H5DkoQyOKrTBOltJOeNB3vw013+nlG2dssiQawP0h
 3Nygn0oHwse4/0zmz6F4Qh4=
X-Google-Smtp-Source: APXvYqynXZV5DmNKwcF41YMQI+zkMN2y+tT+EDVTDe/ER3FhFgZXekgKmDf/npYjX2nka84iVuLfLw==
X-Received: by 2002:a5d:574d:: with SMTP id q13mr94016wrw.263.1574208426257;
 Tue, 19 Nov 2019 16:07:06 -0800 (PST)
Received: from localhost.localdomain
 ([2a02:a03f:40e1:9900:5dce:1599:e3b5:7d61])
 by smtp.gmail.com with ESMTPSA id c11sm15073776wrv.92.2019.11.19.16.07.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 16:07:05 -0800 (PST)
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] aspeed: fix snoop_file_poll()'s return type
Date: Wed, 20 Nov 2019 01:06:47 +0100
Message-Id: <20191120000647.30551-1-luc.vanoostenryck@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_160707_937429_5CD33A29 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luc.vanoostenryck[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Jeffery <andrew@aj.id.au>, linux-aspeed@lists.ozlabs.org,
 Joel Stanley <joel@jms.id.au>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

snoop_file_poll() is defined as returning 'unsigned int' but the
.poll method is declared as returning '__poll_t', a bitwise type.

Fix this by using the proper return type and using the EPOLL
constants instead of the POLL ones, as required for __poll_t.

CC: Joel Stanley <joel@jms.id.au>
CC: Andrew Jeffery <andrew@aj.id.au>
CC: linux-aspeed@lists.ozlabs.org
CC: linux-arm-kernel@lists.infradead.org
Signed-off-by: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
---
 drivers/soc/aspeed/aspeed-lpc-snoop.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/aspeed/aspeed-lpc-snoop.c b/drivers/soc/aspeed/aspeed-lpc-snoop.c
index 48f7ac238861..f3d8d53ab84d 100644
--- a/drivers/soc/aspeed/aspeed-lpc-snoop.c
+++ b/drivers/soc/aspeed/aspeed-lpc-snoop.c
@@ -97,13 +97,13 @@ static ssize_t snoop_file_read(struct file *file, char __user *buffer,
 	return ret ? ret : copied;
 }
 
-static unsigned int snoop_file_poll(struct file *file,
+static __poll_t snoop_file_poll(struct file *file,
 				    struct poll_table_struct *pt)
 {
 	struct aspeed_lpc_snoop_channel *chan = snoop_file_to_chan(file);
 
 	poll_wait(file, &chan->wq, pt);
-	return !kfifo_is_empty(&chan->fifo) ? POLLIN : 0;
+	return !kfifo_is_empty(&chan->fifo) ? EPOLLIN : 0;
 }
 
 static const struct file_operations snoop_fops = {
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
