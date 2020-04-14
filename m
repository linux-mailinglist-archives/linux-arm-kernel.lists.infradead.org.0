Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0864A1A7F94
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 16:23:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c71rNMZ6xlYADUa0y0JAzX3+frM8Nm7vBHo+zo154hE=; b=gllvCoIfdIgnre
	v0bSCGdhxyK4lFD6E8rL2gqgWWH2puB8ZO6kQjy2GeBQ2WkiIH4CueBkJOe8F9I+YtGrDgtRZkFvF
	m98eU1GTEvud4EEW47MKtU9elbImne+SDL9iwamvHeKfLCxhwHjiEE6ueSjSwBwK5JuCAQK6YgoKD
	LXT2XD4Ahk4jtTin3sGmoQXIauWLAYh4uYdTkrzgwtHS7vjklm3hDzlubb9rRi6MhqlyOPLYbTVUi
	NJzTAmCJpIcPwtOw58EusKUdp1B7fiULoK7PVzGll/bT+uIEVumHZCKLoBdYzr5JLsexPnkMt0QGm
	xwhRMmqS8gYLXglMVnbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOMTA-00021V-0B; Tue, 14 Apr 2020 14:23:20 +0000
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOMSw-000214-G3; Tue, 14 Apr 2020 14:23:07 +0000
From: Christoph Hellwig <hch@lst.de>
To: James Morse <james.morse@arm.com>
Subject: stop messing with set_fs in arm_sdei
Date: Tue, 14 Apr 2020 16:23:00 +0200
Message-Id: <20200414142302.448447-1-hch@lst.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

can you take a look at this series?  I've been trying to figure out
what the set_fs in arm_sdei is good for, and could not find any
good reason.  But I don't have any hardware implementing this interface,
so the changes are entirely untested.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
