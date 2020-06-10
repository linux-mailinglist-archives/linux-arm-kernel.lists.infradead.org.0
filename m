Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F7D1F5020
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 10:15:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AN76BrwzT8eBfeFNMk4nDPn3+H2IwoPR8lUiYMUKZkc=; b=b3rl3W2r+BwI8L
	jScWzZhtMnjHQdlTdecI5bXTxHyAq+eSBUEN90NSrPQTUqqypdlHIm4rJHzf9xRXtpHAJcCJTzl9G
	0olHzCt6VAeOfHFDkKQVJGkWQ+Erw5lCp6JVFkFA7Jc6W96bxPYivDdIww9hBzPPuFgDCBsAHVzxa
	0t596L0orXl3z7G3wvycKwz5mlD2FjXAryNHah1gYTY9EqNG8syCaOQ+P8R46P8xPPgsJQUErFl6r
	Gipk44z6QwfyQHeXSx9e1e5nhjvloiMWH3B8FkNRukt8waf1jdg15W431BiHJvhsLqx6/EylT9Cz0
	TG6oR77tYif612dj9Nhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivtN-0001Pr-5Q; Wed, 10 Jun 2020 08:15:25 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivtD-0007yO-6Q
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 08:15:16 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id 21BE44C849;
 Wed, 10 Jun 2020 08:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 in-reply-to:content-disposition:content-type:content-type
 :mime-version:references:message-id:subject:subject:from:from
 :date:date:received:received:received; s=mta-01; t=1591776902;
 x=1593591303; bh=ssxqr7UK6qEgdMyL7dH+arzPRX8wl0hfdoXSy9e6GuY=; b=
 lD1in5nRl1asvbaoxp5CSIcslPJ97egR0FsvzFA5Qe6rNOLlNv98ZLD+ablFJq5h
 CkFPj6VkCst15misLDGQ4YXYJEVNjikauyknE9Unkz6avYBKx4kO4exIUUJO5ZBG
 d3Yqo8lEmWBcfCgbIRX7GbgiMsSM/x5W267/6q5fcGo=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AjbnNF-_vzes; Wed, 10 Jun 2020 11:15:02 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id 291614C84E;
 Wed, 10 Jun 2020 11:15:01 +0300 (MSK)
Received: from localhost (172.17.14.122) by T-EXCH-02.corp.yadro.com
 (172.17.10.102) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Wed, 10
 Jun 2020 11:15:01 +0300
Date: Wed, 10 Jun 2020 11:15:00 +0300
From: "Alexander A. Filippov" <a.filippov@yadro.com>
To: Alexander Filippov <a.filippov@yadro.com>
Subject: Re: [PATCH v7] ARM: DTS: Aspeed: Add YADRO Nicole BMC
Message-ID: <20200610081500.GA27959@bbwork.lan>
References: <20200429113711.13183-1-a.filippov@yadro.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429113711.13183-1-a.filippov@yadro.com>
X-Originating-IP: [172.17.14.122]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_011515_425399_707C5725 
X-CRM114-Status: UNSURE (   6.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 Patrick Williams <patrick@stwcx.xyz>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Geissler <geissonator@yahoo.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 02:37:11PM +0300, Alexander Filippov wrote:
> Nicole is an OpenPower machine with an Aspeed 2500 BMC SoC manufactured
> by YADRO.
> 
> Signed-off-by: Alexander Filippov <a.filippov@yadro.com>
> 

ping

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
