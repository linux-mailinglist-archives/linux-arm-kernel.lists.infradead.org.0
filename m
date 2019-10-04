Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1681ECC038
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 18:08:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BokPqka002sH1wg/zzNzvacdW20vBZcBnGzVdYSxppE=; b=DzyowPHCX5VtCJ
	WUHJY+nu38RzS8ahZfVifrIJeL7HiCLnjkhArxgYmIVXJgOKaTRGW70RWzNG9QxpnDcfwPuqjMocN
	CwLWdOP+pXqRk+eAfKuWTQ9PtDKZqqq8lnW8/HtgcIk4kt1LjuyRBrgfqzbxzDlwzYphqiEw0N6Ne
	Kq3VrY1CBSInKawQMSEe7NLJJeUYI76DFhHhwDLoPUSG0GEBSbd9qRjSVg+Khn4bYPB/3sEnjaLu5
	82iUqzdm/NuocdvERZ0U+W/3clEc4qJRCAuF69K01Ed8VXP1+uk87FGIH0XBDQqJkl+a2W7eoOb+2
	KpoLPhVGJdLGTsFTysDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGQ8G-0006pr-TB; Fri, 04 Oct 2019 16:08:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGQ7v-0006jb-Ip
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 16:08:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 28E891597;
 Fri,  4 Oct 2019 09:08:19 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B8D2E3F68E;
 Fri,  4 Oct 2019 09:08:18 -0700 (PDT)
Subject: Re: [PATCH 2/8] arm64: remove __exception annotations
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
References: <20191003171642.135652-1-james.morse@arm.com>
 <20191003171642.135652-3-james.morse@arm.com>
 <c8518ce0-e1dd-f485-c05b-1ab0216639aa@free.fr>
From: James Morse <james.morse@arm.com>
Message-ID: <7dd64b86-e2bd-1c6e-ea77-fc8590e67366@arm.com>
Date: Fri, 4 Oct 2019 17:08:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <c8518ce0-e1dd-f485-c05b-1ab0216639aa@free.fr>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_090819_678733_065DA473 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/10/2019 14:03, Marc Gonzalez wrote:
> On 03/10/2019 19:16, James Morse wrote:
> 
>> Since commit 732674980139 ("arm64: unwind: reference pt_regs via embedded
>> stack frame") arm64 has has not used the __exception annotation to dump
> 
> s/has has not/has not/  ?

oops!


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
