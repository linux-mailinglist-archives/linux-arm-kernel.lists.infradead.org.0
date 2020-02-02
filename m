Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A85A714FF8F
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 23:17:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=06ndmogR7yklOsnybzRnTuPudsDbmsUJz1R1jwDpNyc=; b=dmCvxfbPMwIrv3
	nWK317MO8y4EiI+837SbJFsgzgnYnib28fCYW35iCoHOWEDnW1uo/EeS5DKa8gEJvSsedKt8fFara
	K+WXQrhH/kwDLUMl4X2a2rtVbTGNZeDYAW26ejmz8hH+NKDlw42uW4ut9yKDGi3UR8i2MofvwzfAb
	bkOj0Xk5Q3Kee1NEYMTCcolx3In5IJJlFmyMz3i5uraxAd49/p+vG4qSUMXvuaBg3fhFnP1mtjXq2
	RbcH3znjEawO4UIZPUnXDiHHF1ERBLQHBu2U+ELiYOLxL23b1ZXttG5dghJX5t2ebTCt/NboOIM64
	QbiH/Lc2uT9+KjlQhdvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyNYn-0007Cu-94; Sun, 02 Feb 2020 22:17:45 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyNYe-0007Cb-6u
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Feb 2020 22:17:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580681853;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gAFNlB//p7ukUDMLsxqUwtHoWz9YNTfdnXKKzZiWsjE=;
 b=c2NvxvjkimRY7YZ8C0VG9u3VamJ6BXiIOp9WyQyt7gwHaIzo8VtBcYhgxKBBjNgz7vl7ir
 l9mdqai18T55ZlRM/5qiU7cFr5MNFrfOgD/nttDdyflSELCW207FDgBI2PTaVpL8VbG6Cq
 ITyqU2PD6DSaP7jojYPwVMxIECXdBmE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-217-kRt1g6Z8OHOiqr8hcIBqZA-1; Sun, 02 Feb 2020 17:17:27 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 179BF8017CC;
 Sun,  2 Feb 2020 22:17:26 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-57.bne.redhat.com [10.64.54.57])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A2BA419C7F;
 Sun,  2 Feb 2020 22:17:24 +0000 (UTC)
Subject: Re: [PATCH] drivers/firmware/psci: Assign @err directly in
 hotplug_tests()
To: Sudeep Holla <sudeep.holla@arm.com>
References: <20200130230845.203466-1-gshan@redhat.com>
 <20200131153623.GC54178@bogus>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <b531e695-562e-cc7b-9d90-f185adcc1cad@redhat.com>
Date: Mon, 3 Feb 2020 09:17:21 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200131153623.GC54178@bogus>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: kRt1g6Z8OHOiqr8hcIBqZA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_141737_160391_AB6EC837 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/1/20 2:36 AM, Sudeep Holla wrote:
> On Fri, Jan 31, 2020 at 10:08:45AM +1100, Gavin Shan wrote:
>> The return value of down_and_up_cpus() can be assigned to @err directly.
>> With that, the useless assignment to @err with zero can be dropped.
>>
> 
> Yes, I was wondering why it's done like this. It may be result of some
> refactoring that we ended up with this. Anyways, looks good to me.
> 
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> 

Thanks, Sudeep. Yeah, It was introduced by commit ea8b1c4a6019
("drivers: psci: PSCI checker module").

Thanks,
Gavin



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
