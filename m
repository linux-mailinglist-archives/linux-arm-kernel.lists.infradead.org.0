Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1B4140AF6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 14:37:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f72t1KaDsB5f+zgA/l7gGW2bm4jWFSXuK5xOH6UnK4E=; b=jS2H7BgvbGi4ze
	7fS6ci4D0Hcn/6dbpzB66vxXLPJFQu86mKNlo3bBj3NKOiTiiaMZPcEl7zJc3YPPNm4IsHaY+koG1
	16XmjdKKqA3ONRchwG2QS5Zg0RKs+chyoDndW8FA8i5LxcBuV+HeKhtOTw1HBhniJxt6NRMBph9tB
	65Ilf6JSE8nPsde4wjUZs07OlbI7VxbPqUleZGvXnIP4Y2xIvaMcNsUJeWpfYTdx3BCupyTcRX4Tz
	UVKfTMehmaDY6VqY1kjQ+9lHqO5MtxJfzbSy8QSfq/YCFqGxDfXu18Umg/du1QcbCsZaO5WgmAtTF
	VI5yE/DroxRWc27Gm+6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isRop-0005dw-NU; Fri, 17 Jan 2020 13:37:47 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isRod-0005cq-MP
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 13:37:41 +0000
Received: by mail-pl1-x641.google.com with SMTP id a6so9905036plm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 05:37:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YHBJFZwYhK7Tmr8esHxqJUtoRn8WnZqTo+H+EnwYrJo=;
 b=nyCDumfvEcGI6zIFcDK5993aLcMZr2BSrphFpVcsIQuJdGZXvAjSxzqH+3c5I9Paf5
 AXRmanS3PLoIGFPLvxYipMqaTeiAD2kEWff4ROiwS4h0BEJd116OLwyHSiYcRxjm5iHB
 5qhIrMXvU0e+VyL0sw+9be4Jx0S6pXmg+kCSt9gDaNyoeFxk/Ph6os7uImlW3gbsAj0g
 DSlOUoP2+jyIkbnHe7USSl7SA/EgB4ObNw0G1wIcgPAXfUxelXegmmO/IDwMKirYFM5h
 /biIw7TgNJY/5OS6wogEgiDzzd/T16483kcJttOHMzl/0UzUU1J1odaLt0KmFfHrldT9
 Rpsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YHBJFZwYhK7Tmr8esHxqJUtoRn8WnZqTo+H+EnwYrJo=;
 b=Okgb35NgZBkgOGB1ZCE/gTWukxcw8EXj7bkKy2jJWifeJAJNsmnRB0G42fLX5VD1EK
 O9O7E+6Z5A4l8EPWvyojsfAN1J9PBCHLXRTpYp8ZbNXzRrh0gs/HQ2Yz7htFzzR72TWA
 inAWiA+6n02ojSsRlX6iiBVjUT8aMNqC9Iq4Vd95ri6xefCfeI9LA0EaH5b5eecImU1c
 z3BrZViaUES9t98U4ag8OOlkygnVKK9PEgFgXIBVogOxXecaRXHcYpkEoS7C39YaWJZr
 85qDPPStjoIJHFCzaDM1p7dQpEhAqYHxpwZPcxJ/fGsrNee/q8s+JI0psibfEQT8KVCy
 zCuA==
X-Gm-Message-State: APjAAAUXqB6RBR7whYTB6vvNkvw/RqifUVN0p3ks06xwTxV3oNy4dkmb
 3Jx9Cnuy0fmY4txgLr5qtLE=
X-Google-Smtp-Source: APXvYqw8EPpDPsWKBxlJK9XKZQjLvJ/SuPz8bvOZHAxShVJvBgezCmAcl0rhxK02SG64hvN+9RT1fQ==
X-Received: by 2002:a17:90b:4004:: with SMTP id
 ie4mr5679480pjb.49.1579268254980; 
 Fri, 17 Jan 2020 05:37:34 -0800 (PST)
Received: from localhost.localdomain ([103.211.17.168])
 by smtp.googlemail.com with ESMTPSA id e15sm3229519pja.13.2020.01.17.05.37.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 05:37:34 -0800 (PST)
From: Amol Grover <frextrite@gmail.com>
To: Santosh Shilimkar <ssantosh@kernel.org>
Subject: [PATCH v2] drivers: soc: ti: knav_qmss_queue: Pass lockdep expression
 to RCU lists
Date: Fri, 17 Jan 2020 19:00:49 +0530
Message-Id: <20200117133048.31708-1-frextrite@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_053735_730392_4ABA0BD0 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (frextrite[at]gmail.com)
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
Cc: "Paul E . McKenney" <paulmck@kernel.org>, Amol Grover <frextrite@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Joel Fernandes <joel@joelfernandes.org>,
 linux-kernel-mentees@lists.linuxfoundation.org,
 Madhuparna Bhowmik <madhuparnabhowmik04@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

inst->handles is traversed using list_for_each_entry_rcu
outside an RCU read-side critical section but under the protection
of knav_dev_lock.

Hence, add corresponding lockdep expression to silence false-positive
lockdep warnings, and harden RCU lists.

Add macro for the corresponding lockdep expression.

Signed-off-by: Amol Grover <frextrite@gmail.com>
---
v2:
- Remove rcu_read_lock_held() from lockdep expression since it is
  implicitly checked for.

 drivers/soc/ti/knav_qmss_queue.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/ti/knav_qmss_queue.c b/drivers/soc/ti/knav_qmss_queue.c
index 1ccc9064e1eb..37f3db6c041c 100644
--- a/drivers/soc/ti/knav_qmss_queue.c
+++ b/drivers/soc/ti/knav_qmss_queue.c
@@ -25,6 +25,8 @@
 
 static struct knav_device *kdev;
 static DEFINE_MUTEX(knav_dev_lock);
+#define knav_dev_lock_held() \
+	lockdep_is_held(&knav_dev_lock)
 
 /* Queue manager register indices in DTS */
 #define KNAV_QUEUE_PEEK_REG_INDEX	0
@@ -52,8 +54,9 @@ static DEFINE_MUTEX(knav_dev_lock);
 #define knav_queue_idx_to_inst(kdev, idx)			\
 	(kdev->instances + (idx << kdev->inst_shift))
 
-#define for_each_handle_rcu(qh, inst)			\
-	list_for_each_entry_rcu(qh, &inst->handles, list)
+#define for_each_handle_rcu(qh, inst)				\
+	list_for_each_entry_rcu(qh, &inst->handles, list,	\
+				knav_dev_lock_held())
 
 #define for_each_instance(idx, inst, kdev)		\
 	for (idx = 0, inst = kdev->instances;		\
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
