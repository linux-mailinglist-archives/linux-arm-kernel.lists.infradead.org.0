Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A5FFC0AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 08:23:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PCp8SEtsxaG2Qvg3Th4SePFJ87WKzKwxpJaUnR35GQQ=; b=WuQj3/tKYlaomx
	AF71azq3JAqKqzA0BavU+nUrDG8hUJjOCxVuvdkqFhof7dg+bDD8ZbxFo0/bUjOZghyzHKdO5ZS9L
	rGBdrGMJJA8MkI7v9nXCMsPqhTMST8vZi58eiPTUyNwVRKxqAKavqorVy06Ih+iwqqphREwv+XgUn
	bcmJc5DkPnd9zOUPF+TTfUmlFKdLvqLvCtzn0T9decdyDTkxtFpuNg8EGcjvHZJEhK8iMuGqJqfb9
	4fcx/Hy2sZXo7hvxegsv8SQVQs71AsNeIH6KHqt4WS32K6upusfhExi9KfqTNzv4Y3mxajzFc8Gi9
	n3Pp8vXFIHzjNOALCGBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV9TP-0005NO-JN; Thu, 14 Nov 2019 07:23:23 +0000
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV9TF-0005KR-Mi; Thu, 14 Nov 2019 07:23:15 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud9.xs4all.net with ESMTPA
 id V9Sti8HvZ5b4MV9Swimr8r; Thu, 14 Nov 2019 08:23:03 +0100
Subject: Re: [PATCH v11 00/11] Rockchip ISP Driver
To: Greg KH <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>
References: <20191114051242.14651-1-helen.koike@collabora.com>
 <20191114051722.GA316916@kroah.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <835e058f-59b7-32e8-8fc9-d5adeacfe021@xs4all.nl>
Date: Thu, 14 Nov 2019 08:22:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191114051722.GA316916@kroah.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfI3GlCbcBMayGg/klLN5FyDQG84A1RgsYbiEg9uA16/LV3+EqUHoZg0tkqv+XfUdnHqxFiujQbQ3G/7OMMMBGzw4rF20cRBB+tz3F9fKOOkErIqHV6i6
 IMFdoCJqMAeHc77G7PaZnfkTSShQb8FatH40pGaAi/dC2hng91vpPBiAb9fqhw6y7lKdgizL2QxfkUJ64CpDS1x6hFRHSL9wnHwNBByAQ8/4dkkELjHN/tGP
 GLdSnRlmXkuMGD9fLZlIXBnH9+GCd2pPTsQ+MNVhlhyUXi0/CWwonLvGaP4E+YBi4JOE+c+WhXTLnxpntEcPaYgJNnmDpbk1/8OqCcpj+1KLKQNMn6Ova8fj
 v9HyC6NRGhhkNsO/XU1saX5MGI7d6/bas0eoPLrvWaDZBTNHiS3G1Mhcob8OT53AvayR3qy/gp/IsEve37TEoSBk0mFKjApoBzo1iII0/wdzZ5GH1LAb/+bu
 tfCk7F/wJ4hWfkl0wFHrzbqB19tloyGLaEHvvPczy7pjtQmTHjuzoUPXqmE7pjuJrajn0HAZx39iL8FaYybg9RZaMzieMtN/0QGyijGMHCbKPMyK3jqOCsaI
 TW7IxyDQKF0g69q06Ma2EkTyugMAaAbGO5cjR+aVfl1Yh9lXaB4NEMGY95NjtG0WiJbcTnjfZqbyGQVmd5R+HTql0+bJ0Ouh5BHW61q/ZQcHkvTn49aOBQOe
 mQNcIxFIjSAbc1CHhU9D5clOmVN+7f3gh/fTdD5QnVEMFkoPz0wz5x48cXdDkT+UKhpmC6yBD3TN3hAHjWJ4qa51RBgQkw1sQbbxb9USb3pAiUs8Jrc2YLT/
 nIyAGiRYzG25zrsWVpQMrCBj28xKKSqSJA8tTCSsK2ff6e1qQshIjF27mSYYLUQXtYCBioMfAFgOb/t45L7hhqQcg3VgJm0NoAgpbg5+4Pt2PycBnCVkiqRh
 sIrsqA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_232313_900698_5DA77E35 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.22 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com,
 kernel@collabora.com, heiko@sntech.de, jacob-chen@iotwrt.com,
 zhengsq@rock-chips.com, jeffy.chen@rock-chips.com, zyc@rock-chips.com,
 linux-kernel@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, hans.verkuil@cisco.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/14/19 6:17 AM, Greg KH wrote:
> On Thu, Nov 14, 2019 at 02:12:31AM -0300, Helen Koike wrote:
>> Hello,
>>
>> This series adds the Rockchip Image Signal Processing Unit v1 driver to
>> staging.
>>
>> The main reason to be in staging is that people are already using it from the
>> mailing list (including libcamera), and having it in mainline makes the workflow
>> easier. Also, it is easier for other people to contribute back (with code
>> or testing the driver).
>>
>> We plan to actively work on this driver to get it our of staging.
>>
>> This patchset is also available at:
>> https://gitlab.collabora.com/koike/linux/tree/rockchip/isp/v11
>>
>> Libcamera patched to work with this version:
>> https://gitlab.collabora.com/koike/libcamera
>> (also sent to the mailing list)
>>
>> The major difference in v11 are:
>> - Fixed compiling warnings found with W=1
>> - Fixed checkpatch errors
>> - Add clock-names values in dt-bindings
>>
>> This series only touches MAINTAINERS file and drivers/staging/
> 
> Looks sane, but as this is drivers/staging/media I am guessing this will
> go through the media kernel tree, not my staging tree, right?

Right, I'll take care of this.

Regards,

	Hans

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
