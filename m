Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E17C1155668
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 12:10:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wsKCg9BmLCBbJnKFzGCDRhjR726RjV/3bgjvclPj84Y=; b=H89Flyp9GfJO8e
	MuzpVYJU/cfEgXvelW1HUvZDsIsunHSocbDfrvj55HBjqq/tQ6P2cykSvjq1Zmu+z/qYdRfKVfINS
	tNzLfw4MhLeV4lICeHvxMCucJGr8RKpQGk1iMCffawZIVPUX4nZHcU1EOfsNqK2Zbd6DUIk8XrSJI
	B3/FtTORd3m9bt3H9uS9ERy++/O3JpmvPDbIWx6Qp3baD6/SiTozEyCsMqfgsC5Vmzq3ahT4OIGFP
	b4RUYxidEku56yA1dAqebG7GO5dJ7Nalg8dJ/A5TjEaHombQzId1Z8PDSxFmmyDA7kJcWewDnGggz
	ONc/x27L3xASz1ci2ksw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j01Wk-000873-AO; Fri, 07 Feb 2020 11:10:26 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j01WF-0006Zu-DE
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 11:09:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581073794;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SCntgRDrXOkiD6uxO1AkQeRXwRIwbg4qjS/12HTChTM=;
 b=bBYKRJEQc7qRMeFHuO1GouMOJPyjwEA/aZZxEimOjP1cBf4nPxbRqWg1VPe3n31JrrQUpF
 Yom6SVANzY0YKTX1BPEg0bL1NaEeOtcKcN39AecXll1w6sW0CitzYx9S/2R14mEE1WfVXh
 gJTzMO5KTSbvsJalR20rOGRg6U6I8HU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-256-Z5R0xcXuMqK-E4vfKKJ61A-1; Fri, 07 Feb 2020 06:09:50 -0500
X-MC-Unique: Z5R0xcXuMqK-E4vfKKJ61A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1C5631005513;
 Fri,  7 Feb 2020 11:09:49 +0000 (UTC)
Received: from lacos-laptop-7.usersys.redhat.com (ovpn-117-138.ams2.redhat.com
 [10.36.117.138])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BBF4A60BF7;
 Fri,  7 Feb 2020 11:09:46 +0000 (UTC)
Subject: Re: [PATCH 1/2] efi/libstub: add support for loading the initrd from
 a device path
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>
References: <20200206140352.6300-1-ardb@kernel.org>
 <20200206140352.6300-2-ardb@kernel.org>
 <a6d7fefb-2f02-86a3-66aa-c3c129a91fb1@gmx.de>
 <CAKv+Gu9Z24GeqrqKhPJN+aAu8crSKvT0ZBeFL=0ik=z2Sd1FmQ@mail.gmail.com>
From: Laszlo Ersek <lersek@redhat.com>
Message-ID: <ecc0febc-b964-5754-580f-7514427a068d@redhat.com>
Date: Fri, 7 Feb 2020 12:09:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu9Z24GeqrqKhPJN+aAu8crSKvT0ZBeFL=0ik=z2Sd1FmQ@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_030955_525542_12362526 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Alexander Graf <agraf@csgraf.de>,
 Daniel Kiper <daniel.kiper@oracle.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Matthew Garrett <mjg59@google.com>, Peter Jones <pjones@redhat.com>,
 Leif Lindholm <leif@nuviainc.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/06/20 23:35, Ard Biesheuvel wrote:
> On Thu, 6 Feb 2020 at 18:26, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:

>> When booting via GRUB it will be GRUB knowing which initrd to load.
>>
> 
> Exactly, which is why GRUB will implement this protocol. That way, it
> does not have to touch the DT at all, or create a bootparams struct
> from setup data and inspect the various flags about placement,
> alignment, preferred addresses, etc.
> 
>> Please, indicate which software you expect to expose the initrd related
>> EFI_LOAD_FILE2_PROTOCOL.
>>
> 
> The primary use case is GRUB and other intermediate loaders, since it
> would remove any need for these components to know any such details.
> My aim is to make the next architecture that gets added to GRUB for
> EFI boot 100% generic.

Understood, thanks. It sounds plausible to me.

Laszlo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
