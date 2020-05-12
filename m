Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFF01CF4CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 14:48:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lygBWq8ZMvpuAXNl5iqlpEU8mH/taERie6PLSmGU7Nc=; b=UzgUqVCFx+EevYwgcAPw044Q6
	vnrnjFXVtycgAa9dVyIeBJq1GqtS3p5WEmVHdJgxCHLQO8kdp9Mx+1VblnvAi5rLmbkguMKWIOgh3
	T6C+bA8GD6YSO86X63WFcelcyObprShw3Ahhlul809icufO/DFyc9NXrRVzrRN9UubRiWDdxPmoPq
	QBK4N3CLoNMKVAPXVkQz20OP2Y1ckrmxTUWhDy8ciKP3+sbEa29kS9bgCF7LseWObsPr38wAG99Fj
	Y6nWSiQTmD8tgr4sS8GC6ipr7lC5wpKMisxtOcH3mGsdOmugaSHqqyylKG7qj19ceMqYfR7XRrL6B
	pK6Aenaqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUKu-0000Is-0o; Tue, 12 May 2020 12:48:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUKi-0000G6-L6
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 12:48:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 94D1F30E;
 Tue, 12 May 2020 05:48:27 -0700 (PDT)
Received: from [10.37.12.83] (unknown [10.37.12.83])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 83E933F71E;
 Tue, 12 May 2020 05:48:25 -0700 (PDT)
Subject: Re: [v2] memory/samsung: reduce unnecessary mutex lock area
To: Markus Elfring <Markus.Elfring@web.de>, Bernard Zhao <bernard@vivo.com>,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org
References: <edf839ce-cc61-73dc-e017-b49648b94d1c@web.de>
 <c910fa00-c27b-9854-9ab2-6f37c28b87f6@arm.com>
 <5a12fa12-f4e0-c941-b22b-33436723b44e@web.de>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <113c5695-5415-03f2-c99a-b394b3118d33@arm.com>
Date: Tue, 12 May 2020 13:48:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5a12fa12-f4e0-c941-b22b-33436723b44e@web.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_054828_731021_DD6286EB 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: opensource.kernel@vivo.com, Kukjin Kim <kgene@kernel.org>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/12/20 1:32 PM, Markus Elfring wrote:
>> Something like: 'memory/samsung: reduce protected code area in IRQ
>> handler' for the subject header would be better.
>> Then in the message explain (without 'maybe') that it will speed-up a
>> bit this IRQ processing and there is no need to protect return value
>> or printing.
> 
> Do you tend to prefer smaller lock scopes for nicer run time characteristics?

Yes and I am probably not the only one. Of course it consumes time, to
make and test this kind of changes (so it must be in my current scope
of work).

Regards,
Lukasz

> 
> Regards,
> Markus
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
