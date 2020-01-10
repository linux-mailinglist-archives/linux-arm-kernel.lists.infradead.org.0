Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CDA136D3B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 13:41:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fDUePsfen1FIJusZ8wFcD7TkKSa9BmjSRpfbfI3U4Vk=; b=ro8L3BqfULRQlu
	vaJIApsPBjrqcitnKx/PvxywDuM46QNMIbNUDTuDkoA7Z2uQfKVX/Ia+6dkRPcLT0lpYwgSWl7Sjd
	CWCUzMT6MQzHVfyVMWjVZ1G/0s0O7VAN72eroU20KhTzVUTYGJTKqu+T6fb8A851YLZ96Tg+cvgzX
	kp00D/6G9rSIhw++ZYiHMUwjuITLW504LVrd/jQXVJf02WfmVwyscRb0fK01Y6meFLnn439iSVwhL
	ZDWXRB6vMbG7EgP6b0IWaauctkV/udog6dXM8qPO5kuiL1BSlrYcz6IKDd0l9lz/eANkhrXlsgml2
	ONmLGqesv138QFqiJSZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iptbN-0000Ls-7U; Fri, 10 Jan 2020 12:41:21 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iptbB-0000Kt-HL
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 12:41:10 +0000
Received: by mail-pl1-x644.google.com with SMTP id a6so829598plm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 04:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KdKUDe5VNtZZyWUDsEVdrhShf2Kcu/VrtdXGE+9fTXo=;
 b=aEXo+Y+Ie5rmicBedqlm+l0xcucSqrT0flZYEl8YMu8DkFlvzVXCDfNNBt0Ss7lIxo
 Ee6QISm89zpDn37usCnsQkHlOScps8LfSO+fn02Z8bMAO/Om7/QL03ogwBfHRxQ/b90p
 BD0vwMHX7I1oywX/wtQ4z7CWLumArREiGtSx7sFxv/iZuwHJl8srnYQkAlwAP6CA13C+
 q4JtK15TFGnjxhw+GpDudO0ScQWna7BEvHzLoM1SLIdMMYuC79rUla8uak+ryyjU52PB
 KPxrj6LMdZmVwlp0CqjledxBozinckQdFyzr4R/PNh2/7L+AFJgb2gnaaTp/SNhu8tb9
 R0wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KdKUDe5VNtZZyWUDsEVdrhShf2Kcu/VrtdXGE+9fTXo=;
 b=UaghgrbxqgGZRJR4Wd2ntyCX1GLMmQUADwhN9AgaIuXB3cQfArY0v/aomScC5ItP+J
 +shyjsofSlPzOywnS+7AxH+uxmj0Wv2eioJjCCmfsjhvYqP3Qwd/iwKtjIgh+0PApdUx
 TqVOSInwF3lZRYHEfsrmD4deMcUQgK2+NNYAgZ4WxxtmPcciaMVpkbE6aQhzEDevYyPw
 mDUH6akkAeA9YIygCc/LrarxA13xaPMiBueIXuRd3AKN1k6Re/WA+Y3p4cTYp+SHTdrc
 2R0cx2LeM0g++k7EtQIZCotGCLTf+uRsxkuvTHlNxRez3bb22aBEX0ScWdRAmeLmWK4G
 nu4w==
X-Gm-Message-State: APjAAAUO2OOg0kZseI40cUujgNl3Bx/QtqD3yC3RL5lwyWpnVji7oubk
 zWswoIZbTD3iJ9+qj6EDWaM=
X-Google-Smtp-Source: APXvYqz1hwPwNDFF8rpc5BstYqeYvTPUUxNEteYq7zFknzooAoSivNVQ2BUO0MS/yigWPRMlbviL0A==
X-Received: by 2002:a17:902:ab8c:: with SMTP id
 f12mr4195297plr.268.1578660068150; 
 Fri, 10 Jan 2020 04:41:08 -0800 (PST)
Received: from localhost.localdomain ([103.211.17.220])
 by smtp.googlemail.com with ESMTPSA id i11sm2890922pjg.0.2020.01.10.04.41.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 04:41:07 -0800 (PST)
From: Amol Grover <frextrite@gmail.com>
To: Santosh Shilimkar <ssantosh@kernel.org>
Subject: [PATCH] drivers: soc: ti: knav_qmss_queue: Pass lockdep expression to
 RCU lists
Date: Fri, 10 Jan 2020 18:02:13 +0530
Message-Id: <20200110123212.26756-1-frextrite@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_044109_575046_D573B23B 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (frextrite[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Add macro for the corresponding lockdep expression to make the code
clean and concise.

Signed-off-by: Amol Grover <frextrite@gmail.com>
---
 drivers/soc/ti/knav_qmss_queue.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/ti/knav_qmss_queue.c b/drivers/soc/ti/knav_qmss_queue.c
index 1ccc9064e1eb..888dc091c63b 100644
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
+				rcu_read_lock_held() || knav_dev_lock_held())
 
 #define for_each_instance(idx, inst, kdev)		\
 	for (idx = 0, inst = kdev->instances;		\
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
