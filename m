Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D23124E99
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 18:00:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oANNA+3uLYZacxk9x/TCqf6UTsOvz9iBQhRAdBiN2RM=; b=sxDsVXX1+Js024
	CRSb1URmKrOgH11dc3OIWyTlWJRRbm+alsC7F6E68J0UIrq23EqDRLjMRjLdRZ+JmvpI3R47DGt9e
	91DD0thNcyl4Pp/moXgYDHIE0noiViZ3QS5m7GSnxYPKU9UaeP++CcnxSycR0KQ507L1wiBYrIHNJ
	v6INVdEdbQCWtcmaEZQUQlvg0GMPK4XOaYgxHc92cveJrq9oUcuRR7e1F5xpNoqpG+N0yAYBe5PX5
	dFDeUiTofC1dzNmNaAPS10KCJVZYQtrpnvRmLBRGvsLSOSvETbp2NKtQvxnbIWhBEfjncpb8dxjE5
	tfdZkOpNj0Vp832EAhwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcgw-0006fJ-4l; Wed, 18 Dec 2019 17:00:54 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihcgg-0006eX-3K
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 17:00:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576688436;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dn5SUwiPZ6v5NQ8mtwG6iqV/r/5Gbbs8HrzPzH1EerI=;
 b=PHFPpPpiHmUbRsqsVkZQ9bSq+PU1NV2wbtFM1bPZD5E4ZPFFwO8h92Vwy8f3u7zNthq8lW
 vx2rY7tZ6s3593h9Rwtxn8A39wwq0enEF0mwnO6twcpyEsSq1ynoKBAjAfJLxCi9rNCoTy
 N3nwFdi54IfEpWHfyBKYR/Q2X6L5SoA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-352-9UUkOd8SOmCuHuHDl5aHpg-1; Wed, 18 Dec 2019 12:00:18 -0500
X-MC-Unique: 9UUkOd8SOmCuHuHDl5aHpg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 797B119586C8;
 Wed, 18 Dec 2019 17:00:14 +0000 (UTC)
Received: from [10.36.116.117] (ovpn-116-117.ams2.redhat.com [10.36.116.117])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1A81460C18;
 Wed, 18 Dec 2019 17:00:09 +0000 (UTC)
Subject: Re: [PATCH v3 08/13] iommu/arm-smmu-v3: Propate ssid_bits
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
References: <20191209180514.272727-1-jean-philippe@linaro.org>
 <20191209180514.272727-9-jean-philippe@linaro.org>
 <466bbc57-79d4-274c-67bc-4ed591da9968@redhat.com>
 <20191218160834.GG2371701@myrica>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <bf66e477-6fea-517e-98b6-123eef625334@redhat.com>
Date: Wed, 18 Dec 2019 18:00:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20191218160834.GG2371701@myrica>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_090038_210350_6950F9E9 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 linux-pci@vger.kernel.org, joro@8bytes.org, sudeep.holla@arm.com,
 rjw@rjwysocki.net, robin.murphy@arm.com, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 jonathan.cameron@huawei.com, guohanjun@huawei.com, bhelgaas@google.com,
 zhangfei.gao@linaro.org, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jean,

On 12/18/19 5:08 PM, Jean-Philippe Brucker wrote:
> On Tue, Dec 17, 2019 at 06:07:26PM +0100, Auger Eric wrote:
>> Hi Jean,
>>
>> On 12/9/19 7:05 PM, Jean-Philippe Brucker wrote:
>>
>> s/Propate/Propagate in the commit title.
>>> Now that we support substream IDs, initialize s1cdmax with the number of
>>> SSID bits supported by a master and the SMMU.
>>>
>>> Context descriptor tables are allocated once for the first master
>>> attached to a domain. Therefore attaching multiple devices with
>>> different SSID sizes is tricky, and we currently don't support it.
>>>
>>> As a future improvement it would be nice to at least support attaching a
>>> SSID-capable device to a domain that isn't using SSID, by reallocating
>>> the SSID table.
>> Isn't that use case relevant (I mean using both devices in a non SSID
>> use case). For platform devices you can work this around with FW but for
>> PCI devices?
> 
> Normally each device gets its own domain. Especially since PASID is a PCI
> Express capability, I expect them to be properly isolated with ACS, each
> with its own IOMMU group. So I don't think this is too relevant for the
> moment, it would be a quirk for a broken system.

OK

Eric
> 
> Thanks,
> Jean
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
