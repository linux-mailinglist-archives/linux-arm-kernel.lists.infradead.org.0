Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 973FB1B5B0E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 14:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/3pHBLA7RI7LVGLY5r/BLuepfD+T+Uxx+Kypfpg00Hw=; b=th9+JDE+C846xT
	xLU42Fo8LbDsB/dHbMhp7otiEEYcBjD9UrurGgCSnK/CPzBf0LWZirk8aumpGXVL+ij/E/3NO6gIQ
	Ck1sbBY3gNjwCaBRrvjDua6omGdHaGnYbmFZeDZe4N2Y5SYf/xwN/eLIRMge8WDS3J+Jtq6LnRmGW
	hrZQtBq+9PDPXrSxp4Lwn+TXm2QC3KD9luC7uVz4DBWwwhdXgpqnQ0wF9CPjGV0JJyBi2Db/YavSw
	ve9JvZT5mhq9A0lA/Qub0lZrOqWTyD7SOlbaQPM9RJY5nAA/srE9eqkiz1CfqXo9TXCyny418ZTMS
	zG1jU8Ks2ifP2nw/UBvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRabc-0004nE-7A; Thu, 23 Apr 2020 12:05:24 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRabP-0003qC-5O
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 12:05:12 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id 638CE4A17C;
 Thu, 23 Apr 2020 12:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 in-reply-to:content-disposition:content-type:content-type
 :mime-version:references:message-id:subject:subject:from:from
 :date:date:received:received:received; s=mta-01; t=1587643507;
 x=1589457908; bh=mLLyssSl6nMcwXw59jsI5OboKUUNH5MjP+qTGX8gHHs=; b=
 OY75G05PhSzt2UMWkl7XrxyvffrzW9M7VFST76ZgRkVMRyvdWRRiIrU6Km5QujVE
 /2sJ4v4XTFJIfhs3z/DzvRxYnDtID4Y68+4b3BXPVnjZmJ3qRdgG2r7ywY8/XBds
 VRdNIfnCpEwfipWFSeELQreZh+FUrLtgQQvuKTxj6zw=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SGlfKVfQBJWF; Thu, 23 Apr 2020 15:05:07 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id 5106B46473;
 Thu, 23 Apr 2020 15:05:07 +0300 (MSK)
Received: from localhost (172.17.14.122) by T-EXCH-02.corp.yadro.com
 (172.17.10.102) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Thu, 23
 Apr 2020 15:05:08 +0300
Date: Thu, 23 Apr 2020 15:05:06 +0300
From: "Alexander A. Filippov" <a.filippov@yadro.com>
To: Alexander Filippov <a.filippov@yadro.com>
Subject: Re: [PATCH] ARM: DTS: Aspeed: Add YADRO Nicole BMC
Message-ID: <20200423120506.GA21043@bbwork.lan>
References: <20200423112100.19424-1-a.filippov@yadro.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423112100.19424-1-a.filippov@yadro.com>
X-Originating-IP: [172.17.14.122]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_050511_413787_B7F23814 
X-CRM114-Status: UNSURE (   5.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [89.207.88.252 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Looks like I've missed subject prefix.
Should I resend this with v4 prefix?

Alexander

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
