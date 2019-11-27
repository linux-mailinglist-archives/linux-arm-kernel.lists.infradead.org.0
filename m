Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7965410C0A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 00:29:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VroTUY0QV8pocwgon8o35gi0J7pLyqO2nCZL44JXdWE=; b=OeEre70yMbMxrc
	wCNbyuqLupyzFX0ZJ2rfoeiSnLLMZLrp58qqoOXKmnGAm3TwxhSPDN7n1OJZ5ztCV9F4tA/ksRM61
	cbnZSepwQOQdwqToS6KtPpXoWXBfmdLwcPvtD1nx/9Z6AOhpELm3T1tvekCp+g3r/CWZncMEAssha
	w2miyngXndc2tp5O8NTCLeBm/VTlAWY5kac5iVzINoizCSU81dTKb8UYMbSFCFKIOM7ky6SdjSFdP
	lPXc9OoY/X3VTDhhpSiQPIvWjrVRefMXyZCNbsyc1ZQ5ViwUf1and6FqOBeQtfXDkVAPkQ3J/oszE
	iSI8G5ZnHSBaJIo+OOHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia6k9-0005PR-W1; Wed, 27 Nov 2019 23:29:10 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia6k0-0005PA-K4
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 23:29:01 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 34D4A7028;
 Wed, 27 Nov 2019 18:28:59 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 27 Nov 2019 18:28:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=WmHnlOTFvScBX2EGmW+ACwDK3duB/G/
 UrnEFxjyQhOQ=; b=phbuY+eRBh+vZeyWUf4cpvAFvBnP6mXg+ATZKmi7K4AwuO0
 LqmcMQHB9hjIiBDT4ptXpZuVULTsfQHBoVKM5jSQuzp5gQRUjfa1/AgReGwR7UbB
 s8SiI+Px9QlcIvEy2ikvgUBYbnb5kfpBsSbXofgTU6icpXXiBZOtfI1upTyKukj0
 +aWH1ncS4r3bmLACRufcQFAYhN56nCiMmyRZNwP6crHCkPMC1LBsVpMR0Qmc0gF5
 QaqNGk55dkpiB3R16YJa6Snhbm3g9NwIQ46Bcbjnoq/nREq0bd5KvS9WbqXKjHn2
 GWMVKR7scvHpj/mEgXxCSJX4nDFOK6V7uCkv8EA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=WmHnlO
 TFvScBX2EGmW+ACwDK3duB/G/UrnEFxjyQhOQ=; b=eTzxGKd+MJ7SV9e1ith8mC
 TsaeQWoXZbBo160hhoYS865k+2AblT3fcVKogo/Pdn4sdOiSFOhmn9lyAlfGXWfK
 jTLcO8QvBDxAINak7oHAEZLNo40sizD6VKgHjcSDPy7mofJDE2zoy2R3trPIrm2H
 zH/RG6RU/hNGingzQi4jM3OCb5rqM3IULaRAQ0ZHhhFgAon9iqonK+Znd3iQtuvj
 X8CX3gwJKRUAB3FA5g3sCjtZFjDVUzMtHcYBgnTTeUzgF3lUMibPLrLw7eT7wwXo
 oHuI+yA+Mgw7/VptN7JlDyB/JydnrwSGEKa9vBgZK/BUo8Qd3Zovv1bBIgNmw2NA
 ==
X-ME-Sender: <xms:uQbfXaWK3T5UnO9kDgcZhpfYXWEAJXDHYtTyTXkH57fsPE-we_7QJQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudeiiedgudduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:uQbfXX261WCfMWDB5jVtpYr0oo0TUPiEVxjeTDvBjBfnEh_wT9OkPQ>
 <xmx:uQbfXbcS2yxYFT8m1LFQf3oxm9SX8dM4T1KVzOqgfoF1-ONw9VrUiA>
 <xmx:uQbfXUVk77F0ThkwVyduEWlNi7eEo79FEvPWF-yREuuFL09kWxymLg>
 <xmx:uwbfXQFeqN8D9Ib7Gmygh12vIPjkGpWY3wZ9abhOScETl1dbeLqtNA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id B7C90E00A2; Wed, 27 Nov 2019 18:28:57 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-578-g826f590-fmstable-20191119v1
Mime-Version: 1.0
Message-Id: <4d10183b-3124-4afb-aa77-c53adcc77feb@www.fastmail.com>
In-Reply-To: <20191101112905.7282-3-joel@jms.id.au>
References: <20191101112905.7282-1-joel@jms.id.au>
 <20191101112905.7282-3-joel@jms.id.au>
Date: Thu, 28 Nov 2019 10:00:27 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>, "Rob Herring" <robh+dt@kernel.org>,
 "Jeremy Kerr" <jk@ozlabs.org>, "Alistair Popple" <alistair@popple.id.au>,
 "Eddie James" <eajames@linux.ibm.com>,
 "Steven Rostedt" <rostedt@goodmis.org>, "Ingo Molnar" <mingo@redhat.com>
Subject: Re: [PATCH 1/3] dt-bindings: fsi: Add description of FSI master
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_152900_733724_16479E95 
X-CRM114-Status: UNSURE (   5.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-fsi@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Fri, 1 Nov 2019, at 21:59, Joel Stanley wrote:
> This describes the FSI master present in the AST2600.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
