Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A525143C54
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 12:52:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g7opMFlsLNCw76fT6kokq3XWfG8YmqdOU4hsuaXq9dk=; b=TtcyJKRNzsSnBMnM+8hQyr7z6
	fzlDoj45H9vEjhAMZyml+9SZkgLpEvU+34S2q1Osx9lB51drN/wJlwsRD3sivi1GsMoNiwQzz6WtR
	YzSxVs7/HicNL2F+lkRWAsUkkAmqRb2xyeywZ4uTX39f+XNKe6XASw2RM/CanYPhZV3UvCqvC87Jk
	9DEoBCEE0xFmUXhAWR0xyd9HAfFtyTIqTsG+kh6XMg4b3kk2C9+vDq8fPsrjCPpRnMWstk/bc49kH
	IBe1z5MgtbQ5LIVY0XlVy+qiGu/OrK7v471Rtg+V9u+Hcksn5jvQcMP+qUeNUmQ6rpNlADMDV4XfW
	vzmf58zow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1its4U-00021e-6u; Tue, 21 Jan 2020 11:51:50 +0000
Received: from outgoing6.flk.host-h.net ([188.40.0.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1its4D-0001zr-0K; Tue, 21 Jan 2020 11:51:38 +0000
Received: from www31.flk1.host-h.net ([188.40.1.173])
 by antispam2-flk1.host-h.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1its43-0002cm-Jb; Tue, 21 Jan 2020 13:51:25 +0200
Received: from roundcubeweb1.flk1.host-h.net ([138.201.244.33]
 helo=webmail9.konsoleh.co.za)
 by www31.flk1.host-h.net with esmtpa (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1its3v-0002hz-ED; Tue, 21 Jan 2020 13:51:15 +0200
MIME-Version: 1.0
Date: Tue, 21 Jan 2020 13:51:14 +0200
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 1/4] media: rockchip/rga: add rk3228-rga to
 rockchip_rga_match[]
Organization: Rising Edge Consulting (Pty) Ltd.
In-Reply-To: <241033bf82fc7e955dd20c0084bfd4f6fc9fc75b.camel@collabora.com>
References: <20200120194158.25357-1-justin.swartz@risingedge.co.za>
 <241033bf82fc7e955dd20c0084bfd4f6fc9fc75b.camel@collabora.com>
Message-ID: <effbaba7b62edde87cd698c9f93fc63f@risingedge.co.za>
X-Sender: justin.swartz@risingedge.co.za
User-Agent: Roundcube Webmail/1.2.3
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net;
 auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.02)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0Xm17NJf4el5vffImWwWrhCpSDasLI4SayDByyq9LIhVmXu3SDcz3sFo
 J0gu11cVyETNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3K7uDjV/sFUXQr+CDrNQuIHgQg
 mAX8Bxy/iUu0ThNZg0h/RxVysY5Ye6+GGw0VqdJD7ren9RtRNyYim5e3GD8LGfWrcbYvelpuN/Pk
 qhBpvAyWwieZyauFYqHkIbFa+ipFflSrcyn7M3A1M8P7YyCISF7Ax1jp5415hfbnHhmkWKwQ798N
 tjgwOHRNrKlsLSLsR2phe2H+VQ5drqtLHIQXdB2sPQC/ZXf7OFUBPjBV0jlmSIpVkQ8AaVZZyclT
 jN5hBEBytmRO9E6AWc5pLuLpWQAKNOWaeaRaLa7FmrJWQzsgLgGrRTwS6j1hXmKLDYUs37FOZ6yX
 Sqr+ov8uUflH8QTJsjWw5+0eZIpQIcK9yrSpnIazZEQP7rhBhxNqNx7Ljd12v0hRQV2TuWFKPYIZ
 hSoXjZRXPZeF/ozRyNShALRVmsv8saqL9IWYZ/7McakodiFVwaP90eVaqnDphEW4xGx2bCpzxgBv
 RJlZffR315YiXq0P29rzRb3/fujGPSO0ZjPN6GBtX9ob7G66M73K7lEBopH59S/bhUmo0Kkx+QUC
 X/JlYVPK+a5jKpRW4VkG9koSZx4AE7ErDJQIhG9sWvIZWUifSNHSdOCLRQ7jpnXnmAJSLoHk+mB7
 rvqdepOw2titfOjo27VsmUXl5Dlu0Ez4hiPVrwbHSJw7Xp/7OsyH8g27Tr7mENICHJaR53upNsj0
 ZNx9ROADUXTdQZTyOamR3KMXZiZ/EdUuc9x8TOdIW6qv7Prfdfuh2V6P2IH+fu/1ze9XG6SFbqNq
 ARXGm2iH1Wgh6RAenBR+licROGZLSOPJ7pouDn/lmAaZNciLnfvtO1PVtIUXLeqBTDtSvZT+XhI4
 nesBJg1eKG706Wf90NysgdUUHBaOGnMZ3fVqqKS4K27k8O0AKLf9g2axxclWHXeuOCUCSaU4vgJw
 yjPlnmxH7Pd4xT6MyYGIdovMjseuwUIt8Ke1zYmTdImommOsTx6n1Q+SG7OG2yVRVB0+/K1/SK/q
 4gW8qcSdMq7QhSk55ObUg7TpMbFmZ6g5Ky+1Stg9rJ7bhjXv2caQWgXrjuU3A3io6xJmD59iFVkb
 kXGPzFwfHhKt2wjdkKIWbyf+T8iepkOFBDDkCgKb9Tgwyo3k9+KsRmFMu5VQ9KBOovIJzflUDtG9
 b8caIarEvU/OX3xYChUDPsYuWEJtniNfuGO37qWHEu6DA1YYHSc7
X-Report-Abuse-To: spam@antispammaster.host-h.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_035133_042685_70FA3348 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.40.0.77 listed in list.dnswl.org]
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jacob Chen <jacob-chen@iotwrt.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ezequiel,

On 2020-01-21 12:45, Ezequiel Garcia wrote:

> On Mon, 2020-01-20 at 19:41 +0000, Justin Swartz wrote:
> 
>> Add an entry to the rockchip_rga_match array for "rockchip,rk3228-rga"
>> 
>> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
>> ---
>> drivers/media/platform/rockchip/rga/rga.c | 3 +++
>> 1 file changed, 3 insertions(+)
>> 
>> diff --git a/drivers/media/platform/rockchip/rga/rga.c 
>> b/drivers/media/platform/rockchip/rga/rga.c
>> index e9ff12b6b..268116cd5 100644
>> --- a/drivers/media/platform/rockchip/rga/rga.c
>> +++ b/drivers/media/platform/rockchip/rga/rga.c
>> @@ -956,6 +956,9 @@ static const struct dev_pm_ops rga_pm = {
>> 
>> static const struct of_device_id rockchip_rga_match[] = {
>> {
>> +        .compatible = "rockchip,rk3228-rga",
>> +    },
> 
> Unless you need to tune something in the driver
> specifically for rk3228, then you don't need a
> new compatible string.
> 
> As the name implies, it's just a "compatible",
> so you may simply declare your rga dts node as
> compatible to "rockchip,rk3288-rga".
> 
> (Of course, this means we shouldn't have added
> the rk3399 compatible string.)

Thank you for the clarification.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
