Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6149B7E0FD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 19:23:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jpGJUrEoGGYyLnI6fHqd0ojNiWNr3z8gdnaTTn/HDB8=; b=QUT
	gFmWN4rq4ngI/SUOrvsDe9NYJDk2mkRBHmZZlEkiivGQlZwmejM6JVqLlVEHO2pSlx1Mj69AYpdqu
	4xc+GHnep3b32OROA0IIuEEuqy5M5pHCE06jxII2VyNLvTtET+TXW2DNHkP2i22WQVYeR+O1Ok0v8
	ZD1ifaRshn5pUviojmwL8WCeMVgAptCt+gZnM3gTp9ROprNUiqtxXTbO9DCfenW0+axwuPuuygdKH
	Vc+OtMUIdO3XsSbHlHh/AeRBQAyFmpHKu0OOepeMEgjRh142CxoCMXcl1X2QplGxJQsHM6h7N/Ei/
	Jy2XDM9/xWDx1aja312hJVGLGK3fiwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htEne-00050X-KY; Thu, 01 Aug 2019 17:23:34 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htEnW-0004zw-LQ
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 17:23:28 +0000
Received: by mail-pf1-x430.google.com with SMTP id r7so34454569pfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 10:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=UYnv4qxuQzPGX4UQQEFZeNS22e8F2NtiPIGKRwTCkY4=;
 b=QcvfTKW5kaxBwF3/uudeHsqlVZFOLDOdqqLBrG2vr/+57JqeYxinTE4BBW+7q56oUw
 X5JEtwa0Bcpl+mHylQNtVWVtmJj4ugEZCAYszFOotFGcihQB+qfIlTrSGLuV/BxfJKDz
 eIfCSotmXKiW9snfEeS4UvLTYFYLhsz1qxobo9XPID2cqyQ47h5d91ry2oyN5CKFLMju
 TV8gm35uQyWakX+nzA5CGoRt0rzewlZgcNTsdC/Z4kUoU+INfC5lbIxwsZ86tPKcg1xQ
 8gRMJlM/u8SSE6t/QOYBnRyieM6o3mtEdFL1YohCkFm2pQXszaqrEGPMHNKJeyMT+V6l
 QVyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=UYnv4qxuQzPGX4UQQEFZeNS22e8F2NtiPIGKRwTCkY4=;
 b=OTRkdLyFtLQFka+PLUx9FqEFVhrzsUlVY6AzrYEjNMwoRPWLSehCQ6D0Jjr2s8SuuG
 juOiXAvRm1LLGRsf/KNVjVEh7yiNjlI4A1hb4bE7MZB1+UwkmZ1qlaJW56Fc3duTHdIh
 wOoR0WccICE/VI3BmhF63acv6BaK1pB+trJ0JYBKC/RKHHOT6UI2096YcUPZiM8CD54v
 VEpR43o4gZHwXHNcsyR0FYheO0JzzwSO9kklozTvstkPfc5XXNNGREo+AEGnzosVFuJu
 038nBdIGFjgC1Ahp0YCq8ScQY+tuStm5LPsdQhr27jMQDoymSHHunjxzylw3YPrZADKn
 PxHQ==
X-Gm-Message-State: APjAAAWAXM86apjJSWK3J0BDZL3vPcyTE5HJIZUVMqPJS4CUkmQCQyct
 OzvgrRQPW66m/9teDBn1LNKAUA==
X-Google-Smtp-Source: APXvYqxTtgXPUYP5w4Yta1mazwVQ5nm2ZbKeiAV29OlzgbPyhDM0LH3S9x4yNNybhrIaezBdrVKHUQ==
X-Received: by 2002:a17:90a:2343:: with SMTP id
 f61mr10049868pje.130.1564680205500; 
 Thu, 01 Aug 2019 10:23:25 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id q22sm67507962pgh.49.2019.08.01.10.23.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 10:23:24 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/1] coresight: Fix for v5.3-rc3 
Date: Thu,  1 Aug 2019 11:23:22 -0600
Message-Id: <20190801172323.18359-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_102326_706493_3F1B0A2F 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Good morning Greg,

Here is a fix I'd like you to consider for this cycle.  Do you think you
could apply it to driver-core-next rather than char-misc-next?  My current
coresight branch is based on driver-core-next to pick up Suzuki's
generic device lookup helpers patchset [1]. Applying it to char-misc-next
will create two different signature for the same patch, something that
gives Stephen a hard time when building the linux-next tree.

I also think this patch should go in stable but haven't marked it as such since
it doesn't apply to any of the stable trees.  Once it is part of v5.3 I intend 
to send a new version of the patch that does apply cleanly to those trees.  Let
me know if you want me to proceed differently. 

Thanks,
Mathieu

[1]. https://www.spinics.net/lists/dri-devel/msg219674.html


Suzuki K Poulose (1):
  coresight: Fix DEBUG_LOCKS_WARN_ON for uninitialized attribute

 drivers/hwtracing/coresight/coresight-etm-perf.c | 1 +
 1 file changed, 1 insertion(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
