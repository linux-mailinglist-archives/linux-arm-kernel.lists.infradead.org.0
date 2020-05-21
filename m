Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 055E31DD69A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 21:06:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mKmYUvYdk3NR6I7YjyU8xyjjDAlhuPoCzMTEv4Vkrdo=; b=RjDVOyhNy8eHxTmwitedNK4cS
	a+1lTYXFKQwfleDw8Tus9G7lS0knt/4TCr1EbXgRiOZhg8edB0yyCz5c3aOAJDK3UYENk1KY3QMWj
	h7IpZHwnqwkbOKhszq90Bj9xs5Y4DLKPPyXKR/pYszSxLzB9ghqkdDJfUNvD4TXTXyf0wEwkM//4b
	lHMrVR6VsXFlnA+Lo4RrjaTDRf/V9DgRN9d/RI3POxmyr+FXT3dtWRIEEEm4leXsOKN2hmJumSUCg
	cciqmzii26rTDOGGJrgKblr4vkzGzdO+vZTjfY3NhcBAUeGmH4EoOx3cLxuTs24gGM9+laLdwUC/B
	7Da3jifig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbqWQ-0004z2-Gf; Thu, 21 May 2020 19:06:26 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbqWH-0004yU-1C
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 19:06:18 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04LJ6An4026452;
 Thu, 21 May 2020 14:06:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590087970;
 bh=TsE8Woh4zkRDEYdrJ4szky2f76HNP2vRTH83cKZFVYw=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=G6bkOMjEAsuxKVKPsCnDAuLxmCjCWKUiG33hlFw2mv7smJKWSjhixJX/8O+k5Io+t
 NOoBOzAiaD4X/jVU3vX4XnezShs1pabJEG28E+RI4iL2A/g9xEwp0D7oHgf12ciX1D
 gTf5Yz0CIcBg43CoNVB+6rMZkj2yX5f8DTVl+3/o=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04LJ6AQf067299
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 21 May 2020 14:06:10 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 May 2020 14:06:09 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 May 2020 14:06:09 -0500
Received: from [10.250.48.148] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04LJ6994034395;
 Thu, 21 May 2020 14:06:09 -0500
Subject: Re: [PATCH 2/4] remoteproc: introduce version element into resource
 type field
To: Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20200325204701.16862-1-s-anna@ti.com>
 <20200325204701.16862-3-s-anna@ti.com> <20200521175421.GI408178@builder.lan>
From: Suman Anna <s-anna@ti.com>
Message-ID: <b338480e-c586-f988-f5b6-784551b7beb6@ti.com>
Date: Thu, 21 May 2020 14:06:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200521175421.GI408178@builder.lan>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_120617_154904_AD1F3517 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Loic Pallardy <loic.pallardy@st.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 linux-kernel@vger.kernel.org, Clement Leger <cleger@kalray.eu>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,

On 5/21/20 12:54 PM, Bjorn Andersson wrote:
> On Wed 25 Mar 13:46 PDT 2020, Suman Anna wrote:
> 
>> The current remoteproc core has supported only 32-bit remote
>> processors and as such some of the current resource structures
>> may not scale well for 64-bit remote processors, and would
>> require new versions of resource types. Each resource is currently
>> identified by a 32-bit type field. Introduce the concept of version
>> for these resource types by overloading this 32-bit type field
>> into two 16-bit version and type fields with the existing resources
>> behaving as version 0 thereby providing backward compatibility.
>>
>> The version field is passed as an additional argument to each of
>> the handler functions, and all the existing handlers are updated
>> accordingly. Each specific handler will be updated on a need basis
>> when a new version of the resource type is added.
>>
> 
> I really would prefer that we add additional types for the new
> structures, neither side will be compatible with new versions without
> enhancements to their respective implementations anyways.

OK.

> 
>> An alternate way would be to introduce the new types as completely
>> new resource types which would require additional customization of
>> the resource handlers based on the 32-bit or 64-bit mode of a remote
>> processor, and introduction of an additional mode flag to the rproc
>> structure.
>>
> 
> What would this "mode" indicate? If it's version 0 or 1?

No, for indicating if the remoteproc is 32-bit or 64-bit and adjust the 
loading handlers if the resource types need to be segregated accordingly.

> 
>> Signed-off-by: Suman Anna <s-anna@ti.com>
>> ---
>>   drivers/remoteproc/remoteproc_core.c    | 25 +++++++++++++++----------
>>   drivers/remoteproc/remoteproc_debugfs.c | 17 ++++++++++-------
>>   include/linux/remoteproc.h              |  8 +++++++-
>>   3 files changed, 32 insertions(+), 18 deletions(-)
>>
> [..]
>> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
>> index 77788a4bb94e..526d3cb45e37 100644
>> --- a/include/linux/remoteproc.h
>> +++ b/include/linux/remoteproc.h
>> @@ -86,7 +86,13 @@ struct resource_table {
>>    * this header, and it should be parsed according to the resource type.
>>    */
>>   struct fw_rsc_hdr {
>> -	u32 type;
>> +	union {
>> +		u32 type;
>> +		struct {
>> +			u16 t;
>> +			u16 v;
>> +		} st;
> 
> I see your "type" is little endian...

Yeah, definitely a draw-back if we want to support big-endian rprocs. Do 
you have any remoteprocs following big-endian? All TI remoteprocs are 
little-endian except for really old ones.

regards
Suman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
