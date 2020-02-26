Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88AFC1705B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 18:12:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1sKNgzlBN5BEKfOunlJAgmHajByZ0jA3Hluphmw8uA=; b=fvAVMR4ZzNF0YH
	0tIz2ir5wgBK72NRm/Gy3gu4eQQ/ghkpEx6TttNyBpOUPpXYcSq6yo8oO6h9mXx5mUO+lfTHSmn2J
	3ZbInuzWWAseya4wPoYhBmh1N9fpud6sQmiHCTEHoDrWVUL2sudX4RGkfafNvE8aDbZLjTjFj0SCr
	OjCPD+KWPRYquGz0AuQmDG6Dogpai5o3ydLsVpbJEK8N6Qy991NM8NSpHhmehbX2b0qhO6NSYrz+Q
	fKvztUqm+3mmN4PlzdXoeuIHxV3TqKrE46wYg0roilF2dDvvZK4wsMlhVW/eDV1DoaF1cwrNgWzm8
	b8sjxdk2xOTlrpnU/9aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j70Er-0001vF-Sj; Wed, 26 Feb 2020 17:12:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j70Ei-0001ut-RU
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 17:12:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5061330E;
 Wed, 26 Feb 2020 09:12:38 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 218623F881;
 Wed, 26 Feb 2020 09:12:34 -0800 (PST)
Subject: Re: [PATCH 1/2] dt-bindings: edac: Add DT bindings for Kryo EDAC
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
References: <cover.1575529553.git.saiprakash.ranjan@codeaurora.org>
 <0101016ed57a3259-eee09e9e-e99a-40f1-ab1c-63e58a42615c-000000@us-west-2.amazonses.com>
 <312fc8b8-7019-0c74-6a92-c6740cab5dad@arm.com>
 <3c3b1d8107a26bbbf8daca3a6c43caca@codeaurora.org>
From: James Morse <james.morse@arm.com>
Message-ID: <f97426fb-3181-5fe9-43ac-be585814ef6e@arm.com>
Date: Wed, 26 Feb 2020 17:12:30 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <3c3b1d8107a26bbbf8daca3a6c43caca@codeaurora.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_091240_933983_AB2F1105 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, psodagud@codeaurora.org,
 linux-arm-msm@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 tsoni@codeaurora.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Borislav Petkov <bp@alien8.de>,
 Evan Green <evgreen@chromium.org>, Robert Richter <rrichter@marvell.com>,
 baicar@os.amperecomputing.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sai,

On 24/01/2020 14:21, Sai Prakash Ranjan wrote:
> On 2020-01-16 00:18, James Morse wrote:
>> On 05/12/2019 09:53, Sai Prakash Ranjan wrote:
>>> This adds DT bindings for Kryo EDAC implemented with RAS
>>> extensions on KRYO{3,4}XX CPU cores for reporting of cache
>>> errors.

>>> diff --git a/Documentation/devicetree/bindings/edac/qcom-kryo-edac.yaml
>>> b/Documentation/devicetree/bindings/edac/qcom-kryo-edac.yaml
>>> new file mode 100644
>>> index 000000000000..1a39429a73b4
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/edac/qcom-kryo-edac.yaml

>> There is also an MMIO interface which needs a base address, along with
>> the index and
>> ranges. (which may be different). The same component may use both the
>> system register and the MMIO interface.

> I have some doubts here, Where do I get this info? Will this be implementation specific?

It will be implementation specific. The ACPI spec folk have gathered some of the range of
ways people are putting this together. We should take that into account with the binding,
otherwise we end up with a 'v1' and 'v2' of the binding and have to support both.


There is a 'Beta 2' of that ACPI document. It should appear on the website at some point.
Qualcomm should have this somewhere, its called 'DEN0085_RAS_ACPI_1.0_RELEASE_BETA2.pdf.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
