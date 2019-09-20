Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAB9B8DFA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 11:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nivfFTC/kCw3+Ud3/b3LdQ/qibhdgZ1xRIjKY5luU8Q=; b=Ne1FxGwGmoVmVyEPIy4s5AxqG
	fxwvfuBGdbx+jGCW6Go/YEat4ws0hz7Sw/9A+34GTHxTEkjRk/JEnyMriQk/qKupYejheMKVADzAs
	GtAgShZMd3PHg402XAgyt1LCxurrQyIJPzUq3myLGMcJhpITk2Qp0htwRy0m2zlbTANbgP/TCL2B2
	iORj7XfYkWqz0GAOpDIP+cNfj/0OTDE/S0hv2G2lPs2zEpYV75oFK568TBfvtuN5J2Yi7/4QqfnwF
	tLRJqZMHZXiKQaJGirKCQmz0U0l+FauUlXlQyDIpS6ySZd+s0gc69oUcxR39aJ4dlC/6sdJ9K+25x
	3elZvrIeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBFUo-0008Bo-SI; Fri, 20 Sep 2019 09:46:34 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBFUf-0008Bg-2p
 for linux-arm-kernel@bombadil.infradead.org; Fri, 20 Sep 2019 09:46:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=33QtEeokaGjZW8nFPq9maDMMKqn+EPER5RzoaOYXoeg=; b=ANlv+kl58JCydSuaqXEWR8aedp
 EEelnXCXgcZFt+KjPlbAAMQeysOUNKTcKpeW6W9Pcx76+5NU+ICpIiD0GHk5DNfL8SFGJl8PgA1y8
 rwjkTV1MAJfX95E3V/k9b44pChRpf0RA8wN4qUA+zEMsGD8a5Lq4zngaTZZ7FxY3at/n4bWN4NkU6
 4XKFsalklXx+AUPQUyH1KxegbKjE0xEE1xPANpxaJ7VUSY/WP6ZUhI+XczbBV3O6aVBeGfldNozk+
 Le6+7M55hCFIi+qjm8MRklTRAFOLzTVpIwldBs3cymue4R1wgyCXBpEHYY1UeHxqYZ4WBcF1EggIv
 6XGGOJNQ==;
Received: from postman-ex2.riken.go.jp ([134.160.33.92]
 helo=postman-ex2.riken.jp)
 by casper.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBFUt-0007lh-8T
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 09:46:41 +0000
Received: from postman-ex2.riken.jp (localhost [127.0.0.1])
 by localhost (Postfix) with SMTP id 31BB5660326;
 Fri, 20 Sep 2019 18:45:44 +0900 (JST)
Received: from postman.riken.jp (unknown [192.168.60.185])
 by postman-ex2.riken.jp (Postfix) with ESMTP id 2D07D66023D;
 Fri, 20 Sep 2019 18:45:44 +0900 (JST)
Received: from postman.riken.jp (localhost.localdomain [127.0.0.1])
 by postman.riken.jp (Postfix) with SMTP id 1358594148;
 Fri, 20 Sep 2019 18:45:44 +0900 (JST)
Received: from MacBook-Pro.local (anet27.r-ccs.riken.jp [134.160.184.6])
 by postman.riken.jp (Postfix) with ESMTPA id DBDC9940F8;
 Fri, 20 Sep 2019 18:45:43 +0900 (JST)
Subject: Re: SPE capable Arm CPUs in the fields
To: Sudeep Holla <sudeep.holla@arm.com>
References: <864D2B3A-E49A-4F9E-9277-E8B64B36E02B@riken.jp>
 <20190920094009.GA13906@bogus>
From: Itaru Kitayama <itaru.kitayama@riken.jp>
Message-ID: <c41d681c-3486-022e-e988-9445f78c3ef8@riken.jp>
Date: Fri, 20 Sep 2019 18:45:43 +0900
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190920094009.GA13906@bogus>
Content-Language: en-US
X-PMX-Version: 6.3.3.2656215, Antispam-Engine: 2.7.2.2107409,
 Antispam-Data: 2019.9.20.93617, AntiVirus-Engine: 5.65.0,
 AntiVirus-Data: 2019.9.20.5650001
X-PMX-Version: 6.3.3.2656215, Antispam-Engine: 2.7.2.2107409,
 Antispam-Data: 2019.4.5.53016, AntiVirus-Engine: 5.60.0,
 AntiVirus-Data: 2019.4.5.5600000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_104639_540700_FBDCAF7D 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [134.160.33.92 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thank you Sudeep. I look forward to more N1 variants showing up in the market in 2020.

On 2019/09/20 18:40, Sudeep Holla wrote:
> On Fri, Sep 20, 2019 at 05:23:38AM +0900, Itaru Kitayama wrote:
>> Will,
>> Though SPE is just an optional feature of the Armv8.2-A extension, I am
>> wondering whether CPUs are already out in the fields or some vendors are
>> planning to make one of two in the near future.
>>
> 
> SPE is available on Neoverse-N1 cores.
> 
> --
> Regards,
> Sudeep
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
