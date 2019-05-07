Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C29161AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 12:08:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=geboEcIktcgyC2mxIuzg2Ow8JLSEQ/AWh5X0E/icc7w=; b=SlJk97uVEdZKlp
	nnVrdJ+gxkb2GZ8EhCuRI5XpIaDZtZqa3lEpHjS27VHHw9tdYctQDZt2As7NFFfHgas1N0L6kxxHo
	iFKNmxt7lfZDDLEq2s1d30ZWLekjbiMaxHxkYwRzPATw/wEEIw31sq51TIAKE3txZgB4WjF3tp9C0
	QD6VD1UTRn7ViYL1hLJHDUelLO7uHCNY7zEot5cl6udoGXxpb1/TF4/BjyehOwSFbXGuR/dezCJaM
	mEM8itNxT9lDBBAVwcmDdd2vlYRUoCOeDe668i46nrBq5p7XYCUDQSmjgfZKcnkhQlT1Tqy5TCxjR
	NDdaxqoGYhyPD2Tu+ulg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNx11-0003Q8-Hh; Tue, 07 May 2019 10:08:03 +0000
Received: from 212-186-180-163.static.upcbusiness.at ([212.186.180.163]
 helo=cgate.sperl.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNx0o-0003AN-Su; Tue, 07 May 2019 10:07:53 +0000
Received: from msmac.intern.sperl.org (account martin@sperl.org [10.10.10.11]
 verified) by sperl.org (CommuniGate Pro SMTP 6.2.1 _community_)
 with ESMTPSA id 7764261; Tue, 07 May 2019 10:07:30 +0000
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH 3/5] spi: core: allow defining time that cs is deasserted
 as a multiple of SCK
From: kernel@martin.sperl.org
In-Reply-To: <20190226113720.GB7082@sirena.org.uk>
Date: Tue, 7 May 2019 12:07:35 +0200
Message-Id: <E177DD3C-49B0-4319-A6F5-45DF9ED02070@martin.sperl.org>
References: <20190223084952.14758-1-kernel@martin.sperl.org>
 <20190223084952.14758-4-kernel@martin.sperl.org>
 <20190223124010.y7lsncknnxoblvgz@wunner.de>
 <CCC6392E-3189-49BE-B04D-3997434184D0@martin.sperl.org>
 <20190224103913.bjw7g6ievr75iawz@wunner.de>
 <0CA42E9E-3297-41EC-8E90-FAE937E892DE@martin.sperl.org>
 <20190226113720.GB7082@sirena.org.uk>
To: Mark Brown <broonie@kernel.org>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_030751_141728_ED185BD2 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 linux-spi <linux-spi@vger.kernel.org>, Eric Anholt <eric@anholt.net>,
 Lukas Wunner <lukas@wunner.de>, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> On 26.02.2019, at 12:37, Mark Brown <broonie@kernel.org> wrote:
> 
> On Sun, Feb 24, 2019 at 12:03:33PM +0100, kernel@martin.sperl.org wrote:
> 
>> Some devices - like the mcp2517fd -  have for example an internal PLL
>> based on an external clock. So during setup you have to use speed_hz 
>> of <clock_hz> / 2 (or 4MHz at most) and only when PLL is in sync we 
>> may be using speed_hz from the dt (or less if a module parameter is
>> used to limit ourselves further)
> 
>> So the initial setup would not be able to help here - and every
>> bus controller would now be required to implement setup.
> 
>> It also means open coding the calculations in each driver that 
>> needs something like this.
> 
>> Thus it is - imo - in the right location to support it in spi core.
> 
> I agree, this feature makes sense to me.

Is there anything that really block this patch?

Do you want a rebase?
Anything else?

Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
