Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 397521F35B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 10:07:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Content-ID:MIME-Version
	:Subject:To:References:In-Reply-To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CNVQtqa9YEKn6tuyvRGoaaVzYNsvRktONsF4eSp4h+U=; b=WWHDzKo4+dp5C6
	iieC7PS4POQtVukfHjkgVIqTvzqSW3GrPxFxpxbn8RbBy2m6ktX4S15BRlT7W/6Uh2lZdrKWXETQh
	Fm33i9LQTeoQPvpehz02YYvOW991sNb+w7wjQ1B9BnTeGup8XtgGSMXxdjnvbAnslUJ53tTp97Sb8
	Fo1K97yekvBB1B/p1gooeXOqOaFWTsVaN990xPMPiRhKYoQr/1Ko5v6puutSWxKkaZqt791RrAIHV
	dPtdwzwL1QF6siABt6FrDMzcZqhU82usY74X9osLLMBahYjcoEEJXWZUWosTmAFITepAsERoVe00Z
	H9mdxHiz8ZzS8iet2ZaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiZHr-00082z-On; Tue, 09 Jun 2020 08:07:11 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiZHg-000819-U9
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 08:07:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591690019;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=G0HJ2ZITbsuLPi3uiPc++ZxP4bS/tgFYIBzHuNokNxA=;
 b=ZF6ZNjK/HmGu6C/K5N8ccNJUG6iFdin8qjy0gW9SDL7QgmZ5+SHyjvsIs4A6ZThLLVycVb
 pxN/8BkF3wRBDolwfwnr3wf+BCkuOxznEIuRstHvQHTZvb1Lg4G9RQMwXYRYtMvyf9T1Cf
 M/8UikZB6zKgvUDhSD9wA++fsbpaJ3A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-299-47teND3zMnmeErxsHtjMtQ-1; Tue, 09 Jun 2020 04:06:57 -0400
X-MC-Unique: 47teND3zMnmeErxsHtjMtQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 88D59800053;
 Tue,  9 Jun 2020 08:06:55 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-114-66.rdu2.redhat.com
 [10.10.114.66])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7A1515D9E5;
 Tue,  9 Jun 2020 08:06:53 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <nycvar.YSQ.7.77.849.2006082137050.1353413@knanqh.ubzr>
References: <nycvar.YSQ.7.77.849.2006082137050.1353413@knanqh.ubzr>
 <nycvar.YSQ.7.76.1708292307400.2606@knanqh.ubzr>
 <20200608224725.GH1605@shell.armlinux.org.uk>
To: Nicolas Pitre <nico@fluxnic.net>
Subject: Re: [PULL REQUEST v2] FDPIC ELF support for ARM
MIME-Version: 1.0
Content-ID: <2913174.1591690012.1@warthog.procyon.org.uk>
Date: Tue, 09 Jun 2020 09:06:52 +0100
Message-ID: <2913175.1591690012@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_010701_050698_1E361412 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dhowells@redhat.com, Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Nicolas Pitre <nico@fluxnic.net> wrote:

> Well... of course it could also be silly to run gdb on ELF_FDPIC-only 
> systems as such systems are expected to have highly constrained 
> resources.

gdbserver and kgdb work.  But on a NOMMU system, FDPIC allows for executable
and library text segment and rodata segment sharing and you can't set
breakpoints by instruction substitution in anything that's shared - uclibc,
for example - so you have to be very careful.

David


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
