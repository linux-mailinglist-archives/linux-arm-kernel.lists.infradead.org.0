Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2554116B6DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 01:49:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gN2gDrEK2yock4lcTG00nAQJ0+Lj0XbNoIlbMvsd8V8=; b=fcaXnuir4rLggP
	H4exVuNEpdmU4LZs1LqTg08BfhkS9z7EpSJ/BGq/xIkBcQD6Xn0QSVqXuT5viCOTt73Regl3FZI0h
	d7h4mgGT0C+uNirWRBz1xNVSWUpao8sbXMay13WQfeEhYXR3GeXG5Ibl8qWqzUvOoFEC5K/2LWmhX
	dtKMEwo7Pr9MRGkAQm44Ql3YKveFwzcznlWEpgwyF1M/yA+j0DaP4gOL0YRGLCAoT04SKyHEu7scM
	JsBY3KzCY3tTzwODID7OUg/pzHC8JuYgt2Z1Mnt1y3WiRrFyKRZOSDwxuE5plWozHWq4UBO65eLjE
	of+u/CusLBq+9drEDdoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6OPz-0007UH-I2; Tue, 25 Feb 2020 00:49:47 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6OPs-0007Tn-Az
 for linux-arm-kernel@bombadil.infradead.org; Tue, 25 Feb 2020 00:49:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Message-ID:Cc:Subject:From:To:Sender:Reply-To:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=oIyQBMQQ4E5E0FKkSGs7lxKmKm/RkB+fqbnodqd6YjA=; b=HcgVSDt6rT6gkEpUowLOauf9Wf
 LaTZgbSpR8tXnEhUwi7a7UYZGIzYnfZPibjcOpS7c4zG1W+ddFofXNcL65cnb+QkMn6UZtFMtC3Hl
 gW3IYFOoEiVonF1azFDp62I0O7aRzqkN3xo1AYnKWrDFL7f1cg27cqOkK/bUrAsWT6ZJqW3vFKO1r
 udL8E8HTb88O5s9A35giXdfBJUgS1Z/nLGQMdDnEHe58qKlqsULI5bLZi3p/3No25UKQqOgN33xbc
 lA3mtqkG+6KoQ21dA6OZnlESdRkD/fPZOVWcP/1AaoXfLajc7nabtQOjRssWhIdB+2yUBoFsGH7GW
 kJDlUSmQ==;
Received: from us-smtp-1.mimecast.com ([207.211.31.81])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6OPp-0006IQ-Un
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 00:49:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582591760;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=oIyQBMQQ4E5E0FKkSGs7lxKmKm/RkB+fqbnodqd6YjA=;
 b=Le5id8Z3Bc01vpevyS/1KS3Xp5/gdyRLdEi0rFVl2xL8tNZeboNF8dCvbavtWvqcCnuOaO
 VGQVxPOTwpj+s+jnUtRXXwXQ+j7x5PxMDTFBZH2Qxv4o1b8R/y9VYxJXj/G3XQSORHSiB8
 lnejgB/eeAfkvO1GibbNLhQQGtPgdbc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-15-74fZ6E2HMWufsYG4h5BEpw-1; Mon, 24 Feb 2020 19:49:16 -0500
X-MC-Unique: 74fZ6E2HMWufsYG4h5BEpw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 01D5B1005512;
 Tue, 25 Feb 2020 00:49:15 +0000 (UTC)
Received: from Liberator.local (ovpn04.gateway.prod.ext.phx2.redhat.com
 [10.5.9.4])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9234E26FDD;
 Tue, 25 Feb 2020 00:49:14 +0000 (UTC)
To: linux-xfs <linux-xfs@vger.kernel.org>
From: Eric Sandeen <sandeen@redhat.com>
Subject: [PATCH] xfs: mark ARM OABI as incompatible in Kconfig
Message-ID: <ee78c5dd-5ee4-994c-47e2-209e38a9e986@redhat.com>
Date: Mon, 24 Feb 2020 16:49:12 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The old ARM OABI's structure alignment quirks break xfs disk structures,
let's just move on and disallow it rather than playing whack-a-mole
for the infrequent times someone selects this old config, which is
usually during "make randconfig" tests.

Signed-off-by: Eric Sandeen <sandeen@redhat.com>
---

diff --git a/fs/xfs/Kconfig b/fs/xfs/Kconfig
index e685299eb3d2..043624bd4ab2 100644
--- a/fs/xfs/Kconfig
+++ b/fs/xfs/Kconfig
@@ -2,6 +2,8 @@
 config XFS_FS
 	tristate "XFS filesystem support"
 	depends on BLOCK
+	# We don't support OABI structure alignment on ARM
+	depends on (!ARM || AEABI)
 	select EXPORTFS
 	select LIBCRC32C
 	select FS_IOMAP


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
