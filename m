Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D5F1C6933
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 08:43:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=niWFU3skvwAXOcl8qp0unAxokOW05YqMX94tAFSi3Hw=; b=g4K
	3XOHn0lUjkbp/u1awE0z/V/tVM9Ow91vHdrflqvJyhiaiGriQDcc5B+7NI42rab4j82zpHnji8PBJ
	nP2MMmtB0tgLbqVjsjdIvkpQzn85lxsHa8hq+8qnE4bCa4RK1yC4N0K5HyE6hJZE7NS0l6nSpKSQ7
	mJLpArPnraSinJCUwBXzd99MJ4utBPSHGkMNBnIGJL97SQOVYVJXWUvTfvW6d0qNSi4uU1TR1kXou
	2RLrHxDFKJa56TLtgx3aKVqzDKe0bC8r7mfnVrDnlssiWlQekQ1Pc9DNkoxAuST83UP+RBNdp0iBj
	Skn3adIdTB/RSg+i4jJnmaWFsu1W2+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDlf-0004nf-7b; Wed, 06 May 2020 06:42:55 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDlW-0004nF-Qg
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 06:42:48 +0000
Received: by mail-pg1-x541.google.com with SMTP id r4so673960pgg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 23:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Liq4U1nmJp+k1QseFVbXa0y7jGlGm2IcoibIba6bIN4=;
 b=QJXMohOTAWtXIbpZubPh2LhaWiMq0ZGIq0L2bnRHMjcmGM/qNb2cfMeJlBM5rLvlte
 T9eOd/OVDHbQWnD9mwKEjWvtsl0lZ3psBAWlOFkDkmKKLNS11BtBtYhlaIKBPxQK0L22
 NNBB5H7yrCzqTh2ZrpSlqlsBFK/9ikpvANfd+ZT86mABSQfaKlAwhE/Brp70ZaXBQSu1
 CN5fL0eDswOdCzd1tjhv87EdSymR4nUIIZ1qI+BnM5d/q/HlHuwL06b4Pg3YYcvELMgB
 DCBxUPHcHkX5kfPsYbD4mqMkAZJ+AQCY+6Szf7RjtpS+S+AR/y81bNKUJvM8e2CJ/ETY
 nuOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Liq4U1nmJp+k1QseFVbXa0y7jGlGm2IcoibIba6bIN4=;
 b=sYMwHJ9t6QM8IM1F5j0EOT5s8LZMBXe3wAQL1QTkoL1Cf1fg8n8+zqkaI9ptc4fYxn
 TjFJudeAKYEHHvj9Ase7HImKxc0JOsq3b5RuCWyrLEmLsdVDc5VsPPLSJcqbKAkgBDLO
 IIErNnR1gdW/d/13NrN0ZGMOunxWLMZFUD2XTlz8CziMdicPu24RqcxNFMtn7Pof6ZaM
 U3ba176OFqvhOPEFfrmYYL2Ol25QM5Suz98RjvDFB+I4J1GtW9rst3aloKd1mkVfMj9A
 W18GzjZNK8BxtBWDz6qZj/IMspry372QmsgT4Nvh1JIJY4/KdU6iXs/vm1F3U9gN13eW
 HvKw==
X-Gm-Message-State: AGi0PubtyTi8FDiQIb0kDyR+zBC5NalMrLphaAJQW4dXTXUMYK2DWToj
 1LE7HmDPsiRo5svxKNo6nAI=
X-Google-Smtp-Source: APiQypL4f1fBXLMhRTVK8DI+lv01KkC0rfikO3bHWD+7BkH2eVp9KWSsqAGBycmCNOlzG+hbh0ZLcg==
X-Received: by 2002:a63:4503:: with SMTP id s3mr5973180pga.85.1588747366086;
 Tue, 05 May 2020 23:42:46 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id b75sm3793254pjc.23.2020.05.05.23.42.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 May 2020 23:42:45 -0700 (PDT)
From: dillon.minfei@gmail.com
To: mturquette@baylibre.com, sboyd@kernel.org, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, sam@ravnborg.org
Subject: 
Date: Wed,  6 May 2020 14:42:37 +0800
Message-Id: <1588747358-31306-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_234246_886671_71AE97A0 
X-CRM114-Status: UNSURE (   5.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Fix stm32f429's ltdc driver loading hang in ltdc clk enable. set clk_hw to the
wrong offset of clks in stm32f4_rcc_register_pll, should be PLL_SAI

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
