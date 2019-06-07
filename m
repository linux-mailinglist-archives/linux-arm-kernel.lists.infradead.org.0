Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C37B38AC2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 14:58:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LxjmF6cxRYMDyFwPc7X9FVO6JcjY96PxdCnqxIRH7j8=; b=GQYwUgM3wxRcdpNFcAWYxAYun
	DjhSIP4TANOnhI5/OtxAQsLsrtF3cznGMESl1BxTikfR8TF7/5zI544L9nvdCoNIPg4anhuTCo5GW
	CyNuypu2fHX2huS50VbpaOXbCBuPjo5O1J7L4pFNriSSXFVc9G4e+5eCnDfa7OFE7+TEutq4fMtdw
	ojUMj32BhmmjqS2HLNq+v8vGogzg8lNZ3zBcCzMl0Mpn1uC8gsEBvo3VhKaBKpMfqOUelHYUAcFqd
	C7yEZKzpiYktBfvCRozqKKDIwzofrCO0+TbQqtOQjzJSacSKqyJpvlz43oEeHL/zxQkxFdd/pMr9m
	bkJkUkraA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZES2-0007i1-DW; Fri, 07 Jun 2019 12:58:34 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZERs-0007gu-Fd; Fri, 07 Jun 2019 12:58:25 +0000
Received: by mail-wm1-x342.google.com with SMTP id c66so1988281wmf.0;
 Fri, 07 Jun 2019 05:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:message-id:in-reply-to:references
 :mime-version; bh=GCl2JsjcOHFck9IG6Qi/zqlMGgAkshSdJspp5JsjjMU=;
 b=UhgoiPmldxiwb7oWLHUmqWzjZ5JdIYVYusQ2p84qti2KDhk12w6l/5ZRV7L7IGXb1F
 filSrIWXX/fbEQ4i3HD3+0EqZ7smYmESmm8GC4lZ6iB64nuyjIt/jx1S0Tm8kfRFn4Sy
 s+v4dzTB1RFWZk5FgLoEDRfuym1jqxQ/g0csyuHBeZXvvbLNPCJlFkV/k2RrEGQzO3jh
 vSHm6Jk0VayQQFJeDqLAqIDJ1HnGI4gTmbhHf0yJtxGGPMk7SH0I18ouHnI/ITL7MMfY
 wYcwdT/XRY/pdebjkstfBxBkD1+xqq3Ua8/h+yZ7g/KvSbyBeml4SSHCz/jeBYJLac6j
 RicA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:message-id:in-reply-to
 :references:mime-version;
 bh=GCl2JsjcOHFck9IG6Qi/zqlMGgAkshSdJspp5JsjjMU=;
 b=fqhbBP10yp2eF+/y96VNIFF8r0Aa1IjtYjaRdiuaFSd1GyWqbsoWkwMPQ7CEIeKnzK
 WJbvsR/tpqiApSz3PmI3FhO/Xwfi/pO2JZ7yvIpzIjAsSLYt+qR6IUhMZ+rnDLnd4Zb1
 EQQEdKKhdSJcQ9s+ee/J27qufnpSMY5ok/jp1bU/telAbJb1GQP4OnT3/BE91W1TSBrz
 yt9/4f6K1fpNpfPXyLto1dqfIeAWeLC76kVeVhHREYkUViV84XCd3v30y4Rp/GVYvQsg
 1cPwF8C0zWN7NEbb3lRBaPCn9CRqlUiNx1bVHftQSs3MZnqV4YhBDdIYacMkJ1tYxo/h
 r/rg==
X-Gm-Message-State: APjAAAVzxRtUVGbv46AtRV91fGtKklSUHzC0sTmzmt7A6GHCkonlvA49
 d0akS2I5bsTL0ELAMYLa+Kk=
X-Google-Smtp-Source: APXvYqy4HQD0rZ0fmBIuKYKdqdoX9LGlMCkg6wigunQyV8+8Sp7+NJyjHHMywu1PmjV6i1AlOJPQmQ==
X-Received: by 2002:a1c:23c4:: with SMTP id j187mr3682817wmj.176.1559912299898; 
 Fri, 07 Jun 2019 05:58:19 -0700 (PDT)
Received: from X555LD ([2a02:85f:1501:7500:ec1f:a19:154e:276])
 by smtp.gmail.com with ESMTPSA id y2sm2199712wrl.4.2019.06.07.05.58.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 05:58:19 -0700 (PDT)
Date: Fri, 07 Jun 2019 15:58:15 +0300
From: "Leonidas P. Papadakos" <papadakospan@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc rgmii
 performance.
To: Peter Geis <pgwipeout@gmail.com>
Message-Id: <1559912295.22520.0@gmail.com>
In-Reply-To: <20190607123731.8737-1-pgwipeout@gmail.com>
References: <20190607123731.8737-1-pgwipeout@gmail.com>
X-Mailer: geary/3.32.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_055824_547497_7B56D67A 
X-CRM114-Status: UNSURE (   6.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (papadakospan[at]gmail.com)
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
Cc: Jose Abreu <jose.abreu@synopsys.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


I'll test on my board, but if in the end it does end up being a change 
to both tx and rxpbl then we can replce the 2 tx/rxpbl options with 
one, as far as I know:

snps,pbl = <0x4>;



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
