Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC5C1256C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:31:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmwkU5MhoWGPyGTEI6s41nbC16d0KJV/CrRtJnqXnSo=; b=RZ3OKTf5XPMiOB
	P8yvNXJzOGJVFTpNn0mLIG0ZJe4Mtm2nWUW1JtcuIdQhTNvVC1sLbCU+C3RGZlK3FUE60eFCIkjpd
	rgVuOtR7lsYa+o2hjwvz2ALKwb67loRjpSWUZz//9SpYjjvxEj8q+PE6iy3XRS+79HtwqFN8Xc7pC
	MUeDyJ9HpJLao3R+J3MFKOPr1uT9/dq9wG7ch+6X6KxCH4fX0mfRDhB9FiqEUWewPK5I+nnqVXuRH
	StDwEy0XcHcidCJb8d0Kmf8KCWRbf5FYmHJM79RGh3NRtWE3ivaKWGD8S/Ud3LwDTpWt+VxhDdQJH
	r4o4geaJ4Ijd8gZZOfMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhqr-0005Cz-R9; Wed, 18 Dec 2019 22:31:29 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhqh-0005BL-De
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 22:31:21 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 239BD1E0B;
 Wed, 18 Dec 2019 17:31:14 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 18 Dec 2019 17:31:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=Lzyvf/oAweCjZ5qIV56uJI0Ozerep15
 7X4x8VBFaL2w=; b=fgkh+Wd1faRZ80tV79SqEgiqfO47hlCbRGjvMXW/tF7jki9
 WynI1IF7nJLBpyfFNBrs5kB/iD9B1kZ4Zct/KVqlmhAjbOmezDRIj68BgFn9cKrO
 6zVbHOITS5uYfxQbYW64M2VcaKodkAdmf+8kBkA/mm8cEojiNaJ0rBJMWyM5iOrA
 cQ32L48NZETL5UM0mGXuk5qtld06H6KvTLd/QRZEBWK2uUjG/fMq3afcmeP2Ih1F
 6wwQweBoXijypJ+cC4RH5UgCYG4mCFKK+XeG8mS/OMQRoqwSejkVoevxOJ5J8BBd
 yxNpuEGrb4n1BnHbYP8kBZFKKwJAzpuZRUsVhCg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=Lzyvf/
 oAweCjZ5qIV56uJI0Ozerep157X4x8VBFaL2w=; b=Ag20xibjqHXMkA9a8aMYoI
 ymKmoMLALOwuT3RPU4NmvqWfucAiAItau1LrU6oqlFu5Yx7AnxaOgXYQMK83j5BD
 Xi1ou27OAwT6EHUZYDWbaBwW7nB4IMXpjyYFK81CtGRS9SggF7BweRFMTXZKLofv
 kCqCYoxzUG30G17iZ0lyC3lAIjCUrYlFLS1vUlnyAANTVhmi+s5Alwy696plDaFd
 E0C+9w7DORjvdmRgIErOl5NlfrXWfyzy0F1IucCKgW3Xu4ij9y72lfbNNZK4AuLs
 upfQ+Wh+GcQNPNLmDWGZvMamMOwyk6GpA6Q+MIAHaYL0ghXKPB5vJHWjuphfW6rQ
 ==
X-ME-Sender: <xms:rqj6XfEXRl9AX1MZQR9DICsNKazBcDuTVlw-GrXsNQfmXGJubEBsiA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtledgudehkecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehn
 ughrvgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrg
 hrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushht
 vghrufhiiigvpedt
X-ME-Proxy: <xmx:rqj6Xfa4-8pcRXygko6cwYT0kJmFx7aETOpInZFh_-vM2nBcvhtrvA>
 <xmx:rqj6XbycQMjEhwpDN8jUPmY8f2_5AiuUjH9h8oL23BayYpp2vVsdAA>
 <xmx:rqj6XZQbpq4QZV3aBoG8HOYeycBGUTb1k2zNIIiwFumDcPWv7qe7GQ>
 <xmx:sqj6XXWAf5MO83LJorjEsG5NKdLUN_wd55TeemMVrtKwttyCxseetw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id CAC89E00A3; Wed, 18 Dec 2019 17:31:10 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-694-gd5bab98-fmstable-20191218v1
Mime-Version: 1.0
Message-Id: <524f6f1c-c32d-498b-b835-ae01c338a7e2@www.fastmail.com>
In-Reply-To: <1576648806-1114-1-git-send-email-vulab@iscas.ac.cn>
References: <1576648806-1114-1-git-send-email-vulab@iscas.ac.cn>
Date: Thu, 19 Dec 2019 09:02:53 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Xu Wang" <vulab@iscas.ac.cn>, "Stefan M Schaeckeler" <sschaeck@cisco.com>,
 "Borislav Petkov" <bp@alien8.de>,
 "Mauro Carvalho Chehab" <mchehab@kernel.org>, tony.luck@intel.com,
 "James Morse" <james.morse@arm.com>, rrichter@marvell.com,
 "Joel Stanley" <joel@jms.id.au>
Subject: Re: [PATCH] EDAC: aspeed: Remove unneeded semicolon
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_143119_671710_D0ACC531 
X-CRM114-Status: UNSURE (   4.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Wed, 18 Dec 2019, at 16:30, Xu Wang wrote:
> Remove unneeded semicolon reported by coccinelle.
> 
> Signed-off-by: Xu Wang <vulab@iscas.ac.cn>

Acked-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
