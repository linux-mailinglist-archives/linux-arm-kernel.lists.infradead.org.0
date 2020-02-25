Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2B016B6F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 01:58:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O8UFhW3qa1IncOF6SE8fJ8/WifCGvvilB/vcOK6uWjE=; b=H4ZRoiVB/3OX0S
	whZnY9wFvRuKfwJGFyvweEKzsOEEWpD7G7eYsJyiVsEPwIt25wiYZLlwHJWJf5dxQspxFAanbYjKr
	aON71vBmoXhykPEmN3hLsvOS0H+sVPBXQyQyjsJ3GyxmxsuAp3YI7jMZdqmNmeyMnk1cLfIXuNmoO
	UDmDZ5fzgdcZitIHwTx4yqxNRw8Gm2eV4H7OgIMzAJHSLe9RnIZvKL2YqqiE4P+y09vptymV2naKZ
	yTexJjn2h+Qg0Npcc0C6JP6r+g4GL8lgLxaGyIGrpUj3B7jvDdJHpyxmtpA9W+FaOqlq21FDMbPl2
	ul8goXbiKHu9p/+RQvfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6OYZ-0002iB-Kn; Tue, 25 Feb 2020 00:58:39 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6OYO-0002hI-W0
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 00:58:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582592305;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CPxO742Yg2htipAZnGp09mYX5mYzlET/AFjMh0MMQoY=;
 b=ZVImKFU9rBtGyHsstOYvXH7mP707Uk1asQrQjM5o+5ojcX2n28S/TYe3+d0nN6xB/p1cic
 vyTQ609XPum/uP11Qedh0UtMPWJDoxy50a+RLPS1NamuhYFNw4iIPJuEHV4Au89mvnmCWH
 ixq+VxOWrFLO2qj8zus8CVyqXSyjUsw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-494-REDMlangMR28id7Q-aRZEw-1; Mon, 24 Feb 2020 19:58:22 -0500
X-MC-Unique: REDMlangMR28id7Q-aRZEw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4206D800D53;
 Tue, 25 Feb 2020 00:58:21 +0000 (UTC)
Received: from Liberator.local (ovpn04.gateway.prod.ext.phx2.redhat.com
 [10.5.9.4])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0865D393;
 Tue, 25 Feb 2020 00:58:20 +0000 (UTC)
Subject: Re: [PATCH] xfs: mark ARM OABI as incompatible in Kconfig
To: "Darrick J. Wong" <darrick.wong@oracle.com>
References: <ee78c5dd-5ee4-994c-47e2-209e38a9e986@redhat.com>
 <20200225005553.GD6740@magnolia>
From: Eric Sandeen <sandeen@redhat.com>
Message-ID: <79faa339-d6b8-d8eb-0857-7d755a780805@redhat.com>
Date: Mon, 24 Feb 2020 16:58:20 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200225005553.GD6740@magnolia>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_165829_106913_01A5D8FA 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-xfs <linux-xfs@vger.kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/24/20 4:55 PM, Darrick J. Wong wrote:
> On Mon, Feb 24, 2020 at 04:49:12PM -0800, Eric Sandeen wrote:
>> The old ARM OABI's structure alignment quirks break xfs disk structures,
>> let's just move on and disallow it rather than playing whack-a-mole
>> for the infrequent times someone selects this old config, which is
>> usually during "make randconfig" tests.
>>
>> Signed-off-by: Eric Sandeen <sandeen@redhat.com>
>> ---
>>
>> diff --git a/fs/xfs/Kconfig b/fs/xfs/Kconfig
>> index e685299eb3d2..043624bd4ab2 100644
>> --- a/fs/xfs/Kconfig
>> +++ b/fs/xfs/Kconfig
>> @@ -2,6 +2,8 @@
>>  config XFS_FS
>>  	tristate "XFS filesystem support"
>>  	depends on BLOCK
>> +	# We don't support OABI structure alignment on ARM
> 
> Should this limitation be documented in the help screen?

Yeah probably.

But now looking at

aa2dd0ad4d6d xfs: remove __arch_pack

hch indicates that some non-arm architectures have similar problems,
so is there any point to excluding this one config on this one arch?

-Eric


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
