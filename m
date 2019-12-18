Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22AEC1243FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:11:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Subject:To:From:Date:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S1tZmk8ebiekPW8xxOuIooBRbXmlk94U5ojXP/QfVwg=; b=lc2P/Yw5Uipuym
	NaPImQLckWqXsauX+RkatH9okm8wFLd9aT3h0Omi1n8XXK21uDeHXOyRys8UigB8oGMsOY/iU7YLo
	nfoZ+hlCGduUYoBk7JR5TZPNoK12ANs29S+tAd82yBd0J3vEpCVUayljU6gnxW/YVF+Zae/pkIZRB
	QMbOSWVPxlS4V8l0nfMhCj16QodG5uuuZ9pytzn/NxqfeCxhCm4yMt6g0hqW+HU72KTXKQ8fJtQVU
	2sRUXAXzbCMX8QS7UI90rCo1SZgxJSlHYBAHete5gAuy8+qQYIfQyldBcjMaduyVSitubsPGtzQoe
	IQukchmGmCX5X71Z0bGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWIc-0001uC-H8; Wed, 18 Dec 2019 10:11:22 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWIM-0001q2-BV
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:11:08 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 4B54C5C1BC9;
 Wed, 18 Dec 2019 11:10:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1576663859;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references; bh=mjlodKzhZZHzu9YArJ1GILH5pgTJvTgsUGKPH8tUf+E=;
 b=v8xhkjz24j0X9AMo6lB40KPorzEOrOwy1P/6/+qsLEAvqdvQr+WQ82H/VtDcQGgL/4fQKh
 7CPX9DKa5OZ9s4iqfaLsBuGTGav0Iqa6ysvd/445wo7PNrnCuUvG3Hk/IxB4NY2LsmRHnm
 /TSRqc18yaPxKaZ/uvXApNQYgZkweTg=
MIME-Version: 1.0
Date: Wed, 18 Dec 2019 11:10:59 +0100
From: Stefan Agner <stefan@agner.ch>
To: pure.logic@nexus-software.ie, richard.leitner@skidata.com
Subject: nvmem: imx-ocotp: fusing write tools
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <2d527ebfde26459b7fa57e519610a8a5@agner.ch>
X-Sender: stefan@agner.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_021106_694731_899F78E2 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: peng.fan@nxp.com, andrea@inversepath.com, festevam@gmail.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

We are looking to replace the NXP downstream OTP driver (CONFIG_FSL_OTP)
with the new upstream nvmem based driver. I was wondering if there is
user-space tooling around which can be used to write fuses. The NXP
driver had the fuse map as part of the API, so fusing was rather simple
and only required an echo into the right file. The new driver requires a
seek to the right offset. 

I found this tool which provides fuse maps as yaml files and makes
fusing rather simple:
https://github.com/inversepath/crucible

At this point it seems to miss i.MX 8 series fuse maps. Also we so far
have no go runtime on our production system, we consider writing a
(probably simpler) C implementation thereof.

What is generally used to write fuses using the nvmem driver?

--
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
