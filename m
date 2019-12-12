Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 957AE11D9D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 00:17:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mvQyoq7MQ0GwTpXSc1Hjz3qe0vOAkEyb4u6aa89Ct8U=; b=HNo
	8edZ6oJiufQUw9NMBWh+qKeYzA2db+LxdAmj8tVGMAfr2v+3l/6RX02e1HmytxQiNnaT7T2x5NVZl
	6j+vWtPjl1fvY18lzjNSJnHL8T6aHOgSt0J+vGZXxmBAVFVVVZA0BdOsQnN3qbqsEQdpnTxB7yvPB
	CBnmq4dfg5QcMtW3ZV6DT/bAgfcRUBc1bSuhJTXaUXpMRWKrzrpCCV48IMbwtnEEtM5zlqSeMaS4x
	c39NpJSMM9TLe+GkoIn47Re7Hw+EmRS9r9xq6avmHyf+4p3Eds6zj6QKmJiF1eSp7DCyIL0SqdCUx
	y28vuU2n8DkE5VYTgS8tpHuFgivJXKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifXhf-0007ko-7u; Thu, 12 Dec 2019 23:17:03 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifXhS-0007j0-7Y
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 23:16:51 +0000
Received: by mail-pl1-x642.google.com with SMTP id o9so281504plk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 15:16:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=QugmQVfkr5kZ5L06QzjGjrkPPpkKJsHosocYw9nkXYU=;
 b=Jjb4J4VzVLPOmC6bbFASdp8Qh98F+OA+usrxiVMhS8CCy4yqe3wt7Coib+5Kam75vL
 JC32YNicxYhCea7HUEKC6kRu5HcOESEN/qt4vxIBl15a93NfUQE3VYepnlkCKA9OZP5r
 d4LSMMzRRPeLdcvOT1yqHfZ7Tdo9ohpUKwryKqOuYwLuhqOAKd1AL0GnmkT3TJvAvXGX
 O4uZges96v3Zb1JH7yZuxRfoYib/b4DANcxU9AdHlDxPcTtf3QUb2TJ0q9Kk3kX2nk37
 ZpkvZ5ud19a15wY7VX+ytCc6nfiOdomTTuAaxZatfrIH0Eh6P+7PHih/VNUouM27NfGt
 acwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=QugmQVfkr5kZ5L06QzjGjrkPPpkKJsHosocYw9nkXYU=;
 b=O2mA4n2SrG8ZPBPfXLi138AuG+1ymrmI1ht/nATBCFNuG8Z3ClGbenc2jSwEkjr+j/
 amodDzJJ69dTMs21IOxkix+pv2+Jv6q+2rmJpHD63A9PeR7QQVYqycaW+9zd3cNHywsJ
 smNpw66H7BddKDACEB5GY/od+urU8KxIuo6fAhtcHEl+tJMKr0Ewr5EatpHSbP3FDXt9
 Rx3n/SYXT1AsEA41NRLuBiRAN5ZCq5SgKcg10NS/PYtH7cgLvdMihcvWMz1e4mqlokQy
 41mQbdpJGgzSGdT/IzgySxCUPSeGGWHzJg97QAZxXYChhV2RFGjx3/WHPMSgXPGCU/eI
 jOhg==
X-Gm-Message-State: APjAAAW/0qtC172bsXi0/9uUd5LSH4aouesM52bwENWCkm1bKVNw8OUW
 0qdULaIQ/qRdf4K8dP/KdXxWdRuxesU=
X-Google-Smtp-Source: APXvYqxyMrVg9IcNBWLaeMiBnoSXUAohAjqNoUjd0LnkUQuoYfNNWWihyzKcX1cckq+MRBMfevi95Q==
X-Received: by 2002:a17:90a:c795:: with SMTP id
 gn21mr12912024pjb.95.1576192608724; 
 Thu, 12 Dec 2019 15:16:48 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:200::1072])
 by smtp.gmail.com with ESMTPSA id ev11sm9423307pjb.1.2019.12.12.15.16.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 15:16:48 -0800 (PST)
From: rentao.bupt@gmail.com
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org
Subject: [PATCH 0/2] ARM: dts: aspeed: delete no-hw-checksum from Facebook
 NetBMC dts
Date: Thu, 12 Dec 2019 15:16:20 -0800
Message-Id: <20191212231622.302-1-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_151650_272347_948DACB7 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rentao.bupt[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

The patch series is to delete "no-hw-checksum" from all Facebook Network
BMC platforms, because ftgmac100's checksum issue has been fixed by
commit 88824e3bf29a ("net: ethernet: ftgmac100: Fix DMA coherency issue
with SW checksum").

Patch #1 removes "no-hw-checksum" from Minipack and CMM BMCs (MAC-PHY
connection), and patch #2 deletes the property from Yamp BMC (MAC/NC-SI
connection).

Tao Ren (2):
  ARM: dts: aspeed: delete no-hw-checksum from Facebook NetBMC Common
    dtsi
  ARM: dts: aspeed: delete no-hw-checksum from yamp dts

 arch/arm/boot/dts/aspeed-bmc-facebook-yamp.dts        | 1 -
 arch/arm/boot/dts/ast2500-facebook-netbmc-common.dtsi | 1 -
 2 files changed, 2 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
