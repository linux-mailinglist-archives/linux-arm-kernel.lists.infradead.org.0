Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C95F1F8453
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 18:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8r0tp/z7rxkRrSWNhOfb2qkpOMMhcECoWmJ16PCvu3E=; b=XeZiBLa9zOzhOY
	D4r8yLZHqgwDZpvO3UyYzfPoMEQ0ujhbSN2Dxn91IfjYkOGN9vkdaqdUu80tDVt0guxzKGQ3DspR3
	S9JjOCKfSPTew9Su0d6A1/N5muKiTBlO2AZaXw90yhWgENlhq+FBk4LnTAksNDcvrL/IgcL7lXBNy
	vaE0xGu5iDNt1arNKFhlluDJDtl42fktxCWw2GpNY+BL9CkiAongtTbrdZbnfspEXOMEWwTmMF1Kj
	b+aT+j4XQgEu+CW9uJmNQQIHPMJtO2bqOwVqepRpOqle3SXOib8kQefxzkI3x89QOPMkjgqR1vXZW
	3M1lBTmtTWqsuTuaC8dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk9GI-0005Tq-58; Sat, 13 Jun 2020 16:44:06 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk9GA-0005Sy-Tb
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 16:44:00 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05DGhswF111003;
 Sat, 13 Jun 2020 11:43:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592066634;
 bh=lIvsGsW24nMTEz/eeWE5udB3Am8ZqohzsFmx7ykBBfM=;
 h=From:To:CC:Subject:Date;
 b=j5rXsjk99QrwOQHbsXfuTArVNWlL4PG2gplFB1oi9M8bbr7GzQ6NZZJzHBZJb2Qvf
 c651v43dsZhZwndY+AcygOcXCt7MPKE2/S1gBoBki1P8WZxMykbL4JWt7w062uoDB6
 LINBwWU6h8BuPf58FvLVG4rj+GpS53Jf/Vif/Wl0=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05DGhsxJ085854
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sat, 13 Jun 2020 11:43:54 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Sat, 13
 Jun 2020 11:43:53 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Sat, 13 Jun 2020 11:43:53 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05DGhqWe096439;
 Sat, 13 Jun 2020 11:43:53 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH 0/2] arm64: dts: ti: k3: add platforms chipid module nodes
Date: Sat, 13 Jun 2020 19:43:44 +0300
Message-ID: <20200613164346.28852-1-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_094359_056547_E8395EFD 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [198.47.19.142 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Grygorii Strashko <grygorii.strashko@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tero,

Hence k3 platforms chipid module driver was merged, there is follow up series
to add corresponding DT chipid nodes. 

[1] https://lkml.org/lkml/2020/5/29/979

Grygorii Strashko (2):
  arm64: dts: ti: k3-am65-wakeup: add k3 platforms chipid module node
  arm64: dts: ti: k3-j721e-mcu-wakeup: add k3 platforms chipid module node

 arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi      | 5 +++++
 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 5 +++++
 2 files changed, 10 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
