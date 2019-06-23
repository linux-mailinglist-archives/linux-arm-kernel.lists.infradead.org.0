Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B6A4FE08
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 22:43:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-version:Message-ID:To:From:Subject
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VlKqQw0fKJOFXFMFlgcfnrbJdjbBMn0W/tT+Ug91Udo=; b=hwTkD5E74WiBxn
	3rwAHj/cgKGQ9TJodJH/Vkw6uVXHsNVakX6efccLteCby1pNSN4KQgKJBGGScgGSaGiNsSD5Y9e4E
	eqgFMTRX01hyKmzZKOAUxu0e/3pBAgSU3LFXzxHP7e+fH7RPutzEBRVsn8t4IJkOeP6co2FKS7Opw
	LFLYaPQ2kygyY7a6mL2JykrW9SuQvBB9GrlZN8LOZ46EAPHtncDSnegzpsXFSMCPHTSLYbBcdTi92
	3Jius5PkXPsR2eJjWhw+wmjq+vBXZYhK5sO3Yhh2WgoKcOn9LLwz6CRX/JRzSgRLgFqbem+XiEqSD
	RHqT3Iu4MUmGGS5b9bjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf9Ke-0007v9-BY; Sun, 23 Jun 2019 20:43:24 +0000
Received: from dlaube.de ([188.68.52.16])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf9KE-0007uf-9E
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 20:42:59 +0000
Date: Sun, 23 Jun 2019 22:42:48 +0200
Subject: Help offering for AmLogic S905Y2 Mainline Effort
From: Daniel Laube <mail@dlaube.de>
To: <linux-arm-kernel@lists.infradead.org>
Message-ID: <0292EC91-0CBE-4F22-8F28-BD581A157CD6@dlaube.de>
Thread-Topic: Help offering for AmLogic S905Y2 Mainline Effort
Mime-version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_134258_467959_A742DE1D 
X-CRM114-Status: UNSURE (   4.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

recently bought a cheap HDMI Stick Computer with an AmLogic Chip (S905Y2 on x96s Board) 
because i was told that it had mainline linux support. That seems to be 
true only partly because there are drm drivers missing for the gpu and 
no video encoding/decoding support.
Because i would like to get these things working in the future i would 
like to offer my help.
I already ripped that thing open to get access to UART to see boot progress.
Could someone please guide me where i can help with the mainlining effort?

Thanks




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
