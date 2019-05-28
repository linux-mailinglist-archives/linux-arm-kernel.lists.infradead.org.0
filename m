Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 092172BFE7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 09:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Subject:To:From:Date:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UWTtQlmmgVlX8WIilhqBYt21m2lpSA3QroXG6rgwTZI=; b=J6TfiPa2sCHuB8
	xsnOU0pe8A9snmManVRLWCMXoT+GNjXWZitziPqw1WPmS3Qg82fomeJWd5uR1EIwSxGb6K58O05j/
	BsunkwYcSuPVjshgaugIDy5rMtpsdxL1vJQ+zdJEV6iTWWV5WkzUzABTPTChvQ9+yCVy/Fkd6sP0n
	UrcgnN1sqe8BiZ5FAYILEJD1TcYuKncrKgPh+gthhZZkhEqERPcZtyVwAlrZk6wVTZdG6fxvzso6s
	ZaLrec4MmZMt0erEIsS5IL6cneRWMFNLCsJqx8y7Re0vT/DdQv+yyHqDaa6GIdgB7gDM9zfRRV8j/
	vPOTNVShWMsL4D9f8MtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVWHw-0004AQ-18; Tue, 28 May 2019 07:12:48 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVWHo-0004A1-I8
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 07:12:42 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 392765C011D;
 Tue, 28 May 2019 09:12:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1559027558;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references; bh=8AvN4Rp4UtplLcQg/vuF6iDP+3e1f64Hr1vHLMLYC2A=;
 b=x0JI5YFrRqC/YRdW9vQQi+zBGEK44z2+/z2VlXkNhsUpnai5Wq3WRrnsW5X2yea9k0mRyt
 n6Prhy4o32jkETDQnuJDHJClI24TyYBa6b5PXswcu9n/tkaeVdsepvjef0ycEkBgLsCbKJ
 cA8Q0kxYCLNaddx8O8HIhw21hIGoVAk=
MIME-Version: 1.0
Date: Tue, 28 May 2019 09:12:38 +0200
From: Stefan Agner <stefan@agner.ch>
To: Masami Hiramatsu <mhiramat@kernel.org>, linux@armlinux.org.uk
Subject: Linker error `.exit.text' referenced in section `.alt.smp.init'
Message-ID: <2072571511d5c77bb9ac53168e44e90b@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_001240_742806_9E56AE78 
X-CRM114-Status: UNSURE (   6.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Cross compiling Linux v5.2-rc2 with CONFIG_DNS_RESOLVER=y using gcc 8.2
I noticed the following build error:

...
  GEN     .version
  CHK     include/generated/compile.h
  UPD     include/generated/compile.h
  CC      init/version.o
  AR      init/built-in.a
  LD      vmlinux.o
  MODPOST vmlinux.o
  MODINFO modules.builtin.modinfo
`.exit.text' referenced in section `.alt.smp.init' of
net/dns_resolver/dns_key.o: defined in discarded section `.exit.text' of
net/dns_resolver/dns_key.o                                              
                              
make: *** [Makefile:1052: vmlinux] Error 1

It seems that Masami noticed this a while back:
https://lore.kernel.org/lkml/20180911231012.fdc45840f3d91860daa2e180@kernel.org/T/#u

Anybody else seen this?

When I remove put_cred in exit_dns_resolver the kernel links fine...

--
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
