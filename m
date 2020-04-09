Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3D51A3958
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 19:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qh9Q9FOZFNl1cnKKsRcjOox52VokpgiQJSa/JENcfp4=; b=sFzFUTzjGv1hU3
	gkU1axtb/SqsTt13NlN+NwlDRuKS+4w7p71OCcEIkED9hTnBRWW6cSZSg25l4IK3Wbsi85Agf06Bv
	j6gk5vopApu862er3V+UMmofhesDUS+64MKiznEEd7ll9yAjDgVGwvDnxoUp9ydjcpZQqOU5sC5B7
	wC1fRCl+vtZHCroA7p5jFedpBnmz/ejnNNNj63pGTQrRRa/fwXdTNbfFFZvEtrLIZLKDBCuNcicjy
	uL5KO5NS1bVv/A9MEdUl0HQM8PYmLimbYWa+y8Au3GbmyP1kO+hvYHhYkKjtROJH7+bVaDMtB3Pe5
	85OfE3/eyQLlCHv1ZdBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMbMJ-0005pR-BM; Thu, 09 Apr 2020 17:52:59 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMbM8-0005oR-Az
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 17:52:50 +0000
Received: by mail-wm1-x344.google.com with SMTP id f20so645456wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 10:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iJCxIfL1xux7zbow1yR6sLNUuWJFlrPO5LaLJSAKCAk=;
 b=bVQ7LmkPJGtTRlNPDLKIQb59onG7LSnqeJl1ASqMJMHKbA0EDo6Wiwn2BturZnvBuv
 sqrMtvbCrZex9KbS9hD/nfMXlaYTcrQqv0NCHynmWjgvEPey7rCvx2q7lGOZVj30MGh7
 s2gauaDO/NQM+OvIjoA26rp3O5uK6m16MSDhKUvNNTvYfnUoYUAIT1g3JZ05kk8vjUUN
 //Ai5CrbUS43fRN37X7WHh3mEyzoUOWBwCljOnUp2wag3g6ILU1eJnEmHmVhz6/bb6Kl
 LdLlriKZPzikvDFbw3LwLfqsSstjye0K3oeSc0nFbbcgSt8nO3vryfrblxExfBSNMfV3
 BcoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iJCxIfL1xux7zbow1yR6sLNUuWJFlrPO5LaLJSAKCAk=;
 b=UKYh9g81YCMj+MshLHnugdgbkbejshaoGPVNm3zhedcIAAUWUmmMXq0W5LccJzb3kF
 ql4jCtHHJzPjgbQSh40zz3AtKqRYlkflJJU5qwHG9otvAtfHWT6T37jjrJBS1Q6sOMre
 lXG7cJH5wa/fp1vG9mlbRHkd1L9e2f1LNBC6JD7LGRU2TF4mkCGTvqWBl1Uzlowb+sJG
 MuzeseJ7RBnytDW62xugY06cGozwT143Sj3Vena+f+5o+hUhqcKFOkjHbKfKQcUhywKX
 lWrUBCIa/gn4Eu76IgojSanFs9R1exukYJFOvPecTweFG44/Rbf/DakB58WIDdt/YmwI
 um8A==
X-Gm-Message-State: AGi0Pua9GDW+pIkcgQMWmubH36NFOynXBw3GxdfCZV4xXzBQBPDpeCQR
 yxM8qOCJlLIuGX3p32yYwcU=
X-Google-Smtp-Source: APiQypJdSEVqF3BY/HTP1GDyrgQPW7P2au5kkjIrbfzEK04mt9L+lD88qeAW+eNAzT34vBWW79XuWQ==
X-Received: by 2002:a05:600c:2c47:: with SMTP id
 r7mr997554wmg.50.1586454766564; 
 Thu, 09 Apr 2020 10:52:46 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id w18sm18194561wrn.55.2020.04.09.10.52.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 10:52:45 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 01/14] dt-bindings: reserved-memory: Introduce
 memory-region-names
Date: Thu,  9 Apr 2020 19:52:25 +0200
Message-Id: <20200409175238.3586487-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200409175238.3586487-1-thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_105249_144779_8D829731 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

In order to make the reserved-memory bindings more consistent with other
existing bindings, add a memory-region-names property that contains an
array of strings that name the entries of the memory-region property and
allows these regions to be looked up by name.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
Changes in v6:
- drop addition of memory-regions alias

 .../devicetree/bindings/reserved-memory/reserved-memory.txt     | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt b/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
index bac4afa3b197..4dd20de6977f 100644
--- a/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
+++ b/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
@@ -77,6 +77,8 @@ Regions in the /reserved-memory node may be referenced by other device
 nodes by adding a memory-region property to the device node.
 
 memory-region (optional) - phandle, specifier pairs to children of /reserved-memory
+memory-region-names (optional) - a list of names, one for each corresponding
+  entry in the memory-region property
 
 Example
 -------
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
