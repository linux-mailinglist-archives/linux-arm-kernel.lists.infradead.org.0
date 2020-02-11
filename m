Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D468159D0E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 00:15:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ipvEohfSMWBKdH/NBkX9MgqdblQvaOXNudOYuiOhzDk=; b=iVRmCfKWQaFbEd
	79pcc6UOUIcKbr84s8Kz95p6DoArqLDiLdD4zUmQTxGPDxpv/qMDlD5o9oRMY0dgeQXUdqSnwK1lK
	w1dx+KAFZQpvV93CcDnA0p15RXCgWfoB1/iAYS4Yw+lCSdaAbUlWYCySHXF7jiDyVWl/1PEavKu6f
	xoTBYvvCn9pcOTw0sXmK0CkemgSEUijEBsRIy1kIEdOkUOwq+6bY9IfsuHB2oRjEMN/sWGCrSuZsG
	iuQhAhMTTtRRt0+FUZInn7B8UcbfrzOLoTNss4Eu5+6CS//z7loDMcVL2LqScj5hbG+mtodu+exfv
	WZDeCGyB/FAM/Pskdr3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ekO-0002nE-4q; Tue, 11 Feb 2020 23:15:16 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ekC-00027p-27
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 23:15:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581462902;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=k7vJN5tnby+Cve7yTxGbAr8tIPAu3bRC1wVagn982Pg=;
 b=QfDs2aGaKI9Ui/1wjPxmrs/DdHXlsLk30rkXT0djbPt2DgLCTckWBAjusU0L5Vz2oEprsV
 nwn596q2LXM5Opiub75lrrBQSXW1uQ6+vj70BomjeGyZK6jsyp/ns7X90pNpfE9FsKGyJy
 lTj+/H5ni/Tx/oefndYMu6yfttF1CR8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-4-crCk9zZQPGydfKb6hc2_HQ-1; Tue, 11 Feb 2020 18:15:00 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8A5348017CC;
 Tue, 11 Feb 2020 23:14:59 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-85.bne.redhat.com [10.64.54.85])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 06AB519C69;
 Tue, 11 Feb 2020 23:14:57 +0000 (UTC)
Subject: Re: [PATCH] drivers/firmware/psci: Hide ACPI state during
 initialization
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20200202230626.6598-1-gshan@redhat.com>
 <15169cd9-a22f-9ab2-b7e4-d050aee334cd@redhat.com>
 <20200211122104.GB21093@e121166-lin.cambridge.arm.com>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <bab3d6ed-a35d-dcf5-9b05-ee60f2d503f8@redhat.com>
Date: Wed, 12 Feb 2020 10:14:54 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200211122104.GB21093@e121166-lin.cambridge.arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: crCk9zZQPGydfKb6hc2_HQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_151504_421386_4DAC3F40 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
 sudeep.holla@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2/11/20 11:21 PM, Lorenzo Pieralisi wrote:
> On Tue, Feb 11, 2020 at 01:02:44PM +1100, Gavin Shan wrote:
> 
> [...]
> 
>> The words "export" here means "declared". Two functons (psci_{dt,acpi}_init())
>> are declared and one of them is called depending on ACPI is enabled or not. If
>> we hide the ACPI enablement state inside the driver/module, we just need to
>> declare one function (psci_init()), to make the code a bit cleaner.
>>
>>>> This hides the ACPI enablement state insides PSCI module so that we
>>>> only need to export a function, to make the code a bit simplified.
>>>>
>>
>>> For me it's just the preference. I will leave it to maintainers' taste.
> I am not too fussed either way. As code is now though at least we know
> acpi_disabled was {set/clear} before PSCI is initialized. Hiding the
> ACPI/DT switch in PSCI code can be a problem if we move the boot code
> around.
> 
> I don't necessarily see this patch as an improvement, again it is
> no big deal regardless.
> 

Lorenzo, thanks a lot for the explanation. I'm fine with either way. Please
pick it if it's fine to you. Otherwise, please drop this :)

Thanks,
Gavin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
