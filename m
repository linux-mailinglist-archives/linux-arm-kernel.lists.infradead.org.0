Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C08100BDC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 19:52:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JKe4DDL0lmuHaTaW+B3wvYn54xk4eO7Uh2//S8Xmqco=; b=Csd
	Ig6WVmw6p+L+/KwoODD4PAmihFjBE5cPiJTx6hGwQnaa8T14U1FknWAC6Pw3+4yTGYfmi+7671HjC
	MfSnkKsmTXu0Pu54Y8Rc4GwSoAmh+W1ImQTpfzipmzAZFploH3FMHBl/RgYhpI9WhnB6563bGIiKf
	l4AbzP5VTrsqCQruolSQNtzdHdKmU0AFooKWijrshFttRkqolX0tOthgOm+8JT3p790BIxKrxggWO
	+0Srs72GrFzvRzr/+wKClhmJerpTN9OaukFfPugKWIGOtZOp+Kee+omwaXu/288kHsKMh2jVot04N
	DU0UeIRZ2ZANeFpK65BI4ycRCyWKaFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWm8K-0001VA-Ns; Mon, 18 Nov 2019 18:52:20 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWm89-0001UG-T0
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 18:52:11 +0000
Received: by mail-pg1-x541.google.com with SMTP id e6so2077532pgi.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 10:52:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=egFH3kuFucvTg7OqPB5zoeZ6qaqFrTRq5yDDJDvTdIo=;
 b=v3l3yuLhgcvBYCBBdRVhzwcMUqf4Aqpe8f7s6UY1qh8/KMup5icZeqyESukWQPYnv4
 2nfJXsOX24U//KD4UOdcasPL3I3IIRaIjUuz0I0fYmoBJxnBMGojWNjnMUmH2I4pN623
 Dxls0HXa3k9wznm5s4Yz94VXONrlgKhKtYd5us8vrnVOqVmYgGWK/xnzbRzUl+fS/qc2
 eomGW2SoFgyV19hy9vw6gMjl8oKFifvF0k61CzbkqXcdEoAH4bh5UwnPXh8N2WTIART9
 7vOm7v18HY9l7QjacU+gXi4nNKg85wCFxSIg04Wu82gFnOjYZhuB58LX9MNoOhqUuzYp
 15iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=egFH3kuFucvTg7OqPB5zoeZ6qaqFrTRq5yDDJDvTdIo=;
 b=BrqhQWqZxEbqxdMuP+gs44Y8kjl2KiurzCb4VxwMBoWiGvuUMBgwAreCP3C7l+NZ3m
 N+kwMU7eF0coofjJnkBjN96pF68b5ZBZGcyKeNC81Tmv/WvxpQ8ocwF/5ER6HdzYVRHt
 JLvrbCL1pbuUsqYJ7lVngE7E/mNNW5iLUoKiJtKkdwZ/9ICLwwbhQ9zOVhMyTL3KAqpK
 qPHECArHbSiRmhKXEKWdwyoA2AdUIJXozhJg6qEdYB+NOQxFg6Q/San4Ldc1SG2D5W2h
 wZDtkih8iUyzjBAV14xgmBkS65zCEp40CeXF5uQFwVJd5ouhwtuqzDm73OTZkNZtuQqo
 MEzQ==
X-Gm-Message-State: APjAAAUWBpU1U4/AV59oIjqqk/B6quzgXg70eNaZ6h7dzDG3Lz6kXpUR
 lui1KXkJJqhfPoqdNr87qFkapQ==
X-Google-Smtp-Source: APXvYqw1sGIEgdtfa6PWVeIepoQvSUgca88oxsSX/P2NCccowq+CxP5jMUK2ILZ/b/Tvxb5gW6PpVA==
X-Received: by 2002:aa7:9432:: with SMTP id y18mr827350pfo.250.1574103128959; 
 Mon, 18 Nov 2019 10:52:08 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id r10sm19878910pgn.68.2019.11.18.10.52.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 10:52:08 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/2] coresight: next v5.4-rc8
Date: Mon, 18 Nov 2019 11:52:05 -0700
Message-Id: <20191118185207.30441-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_105210_015620_95FF30EF 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Good morning,

Since we have an rc8 and the fix are trivial, please consider for the next
merge window.

Thanks,
Mathieu

Wei Yongjun (2):
  coresight: funnel: Fix missing spin_lock_init()
  coresight: replicator: Fix missing spin_lock_init()

 drivers/hwtracing/coresight/coresight-funnel.c     | 1 +
 drivers/hwtracing/coresight/coresight-replicator.c | 1 +
 2 files changed, 2 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
