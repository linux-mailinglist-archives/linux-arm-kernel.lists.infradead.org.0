Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED99C1747A7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 16:24:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z6evn9CqPlJ+2LMcWtJlvpvumvyBj89bEi98uCUPJMI=; b=S1SeO5sIBUEbS6REongWwLKCO
	k2yhL/lFgHwFhgAAF8rvYblPIHw9eP2DqEIiKT4i5Scer9/R/7twYZFW2KpCkAMW6zSSUsosquzHl
	zl0vmmgibmp9KR6irR7YRqUa8MlYzQnkLxJQ426t0wkXoI8tHdawabWsjoZQ/2TXL74K/UR4Jpe4D
	b70bmLjqkkQgcwny72fIivrBDc5Cby/EFHwgMDCnZ0CpPMoeCAMg0l/zKZpy8N95VdrvfCV6oronk
	vIpmuGgjpIU9jU1NtmMFs7RyTD+oEvvvn9ad/BZMEn9huN8RXSztMx1ttSKETaQ8sJe3+tzQ2IBX5
	0x3pyR84Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j83y7-0008Us-VG; Sat, 29 Feb 2020 15:23:56 +0000
Received: from smtpng2.m.smailru.net ([94.100.179.3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j83xu-0008UP-Ti; Sat, 29 Feb 2020 15:23:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=orpaltech.com; s=mailru; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=J3REvY95VukhPutns9ChUclE3Vobsv7oFyZDmK3Rcew=; 
 b=I5Dss3oCkB4IKkAMidcsVTOnCAj067gHxKaMCmYxsJDDbeOa/tjp2siHEMb+6mzX0mgNTq+WHfPYQvL4WJSDFXrpOYAinz7vEXBusmFRHcbAH6tixASi4nBEVHJYqNFj/X4W9u+mV68a44J4SDaXTQ+Z8ww7pN4y6mYccI3GbSs=;
Received: by smtpng2.m.smailru.net with esmtpa (envelope-from
 <ssuloev@orpaltech.com>)
 id 1j83xp-0007du-Li; Sat, 29 Feb 2020 18:23:38 +0300
Subject: Re: vc4 on rpi3 A+
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
References: <8b353626-f62a-2aff-96b4-91712ed36095@orpaltech.com>
 <b71f1af17d68ee66a2781a694e8a77dcafedd76b.camel@suse.de>
From: Sergey Suloev <ssuloev@orpaltech.com>
Message-ID: <3ca12680-4843-4fb2-3145-0152edca96d1@orpaltech.com>
Date: Sat, 29 Feb 2020 18:23:36 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <b71f1af17d68ee66a2781a694e8a77dcafedd76b.camel@suse.de>
Content-Language: en-US
Authentication-Results: smtpng2.m.smailru.net;
 auth=pass smtp.auth=ssuloev@orpaltech.com
 smtp.mailfrom=ssuloev@orpaltech.com
X-7564579A: 646B95376F6C166E
X-77F55803: 0A44E481635329DB0E1AA8A03B392317179C3E6C7981FFF2F94659E4BEF79E7123BE2F6A69CF2583556F68EC540A45328D98FA7232DBEA367DF4FEA4D0B7C80C6756E0DCF4411926EA6C34E4E132AE80
X-7FA49CB5: 0D63561A33F958A5F4D8A85BDB0DD101C67DD1DE1830F6BD87C747EEF9B077DE8941B15DA834481FA18204E546F3947C1D471462564A2E19F6B57BC7E64490618DEB871D839B7333395957E7521B51C2545D4CF71C94A83E9FA2833FD35BB23D27C277FBC8AE2E8B2EE5AD8F952D28FBA471835C12D1D977C4224003CC836476C0CAF46E325F83A522CA9DD8327EE4930A3850AC1BE2E7352629B07FD02F83A6C4224003CC836476C0CAF46E325F83A50BF2EBBBDD9D6B0F05F538519369F3743B503F486389A921A5CC5B56E945C8DA
X-D57D3AED: Y8kq8+OzVoxvgW9Op3aR8Fxwo7H2ZNxGP5qz8aO2mjTJzjHGC4ogvVuzB3zfVUBtENeZ6b5av1fnCBE34JUDkaJinJwwHx5ysVv9/YfT9uf4SBE3QXmpuA==
X-Mailru-Internal-Actual: A:0.87552775376455
X-Mailru-Sender: 689FA8AB762F73930799C7A3FA23A2700571638DAE85AA167D3DC93670122260778B5FB1219D8779F6BCD4B1DE95BF653AE5922765F965CDF1D7D1B96E5495AE10FCEA6DFE3E0A150D4ABDE8C577C2ED
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_072343_151011_C63ED724 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.100.179.3 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>,
 bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Nicolas,

On 2/28/20 4:09 PM, Nicolas Saenz Julienne wrote:
> Hi Sergey,
>
> On Thu, 2020-02-20 at 11:21 +0300, Sergey Suloev wrote:
>> Hello, guys,
>>
>> could anyone clarify the status of vc4 drm support on RPI 3A+ ?
>>
>> I tried to build kernel 5.5 and 5.6-rc2 in 32bit and aarch64
>> configurations with VC4 turned ON but both unsuccessful - vc4 drm driver
>> is listed in memory but not working and not producing any typical DRM
>> log output.
> I managed to get my hands on a rpi3a+ and reproduce the issue. 'dmesg -lerr'
> outputs this:
>
> 	bcm2835-power: Timeout waiting for grafx power OK
>
> This is a known issue, see https://github.com/raspberrypi/linux/issues/3046.
> I attached a device-tree patch in case you want to verify it fixes the issue on
> your board.

the patch works, thank you


> @Stefan I guess I'm going to have to revert the pm patch, any comments before I
> do?
>
> Regards,
> Nicolas
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
