Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7BA22FFD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 11:16:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NlJtUwU5RMujxNXqKFgEwnhjaLWMpTq9ctgH6J/Nh2w=; b=swDjVCEca3OM6G
	rXHqciNpbO4LBxFSoX7HKVscPtWL+5hTYq6XkuNWGVK0JbHb82Sf7TBPD3tjylRTXDBgo/A81D3RY
	sb3Je5WVIZGgzYRDK0I6ysu4WRaIVES2mO65EUfd/i0MbYA7DPlgQYWtJI9S5XwsDXHhCQVb1pTvR
	AEmpo6XBw3s/XiYN/akcClkOYUdojDhXp3UwjP0J7/38vSQBAqEyXFmO0AtPkDcglRvPyiX1vLTLJ
	1mLHzlygJ240N9+fqU5O5uD00MNtBkMS/CfLwtROD2QRgU8BbcfSF4M+JWJJ/5Ppxa4i70RNDBqPK
	lBibuT/PwDERMt/hl5lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSeP7-0000AP-2H; Mon, 20 May 2019 09:16:21 +0000
Received: from mailgate1.rohmeurope.com ([178.15.145.194])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSeOz-00009y-46
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 09:16:14 +0000
X-AuditID: c0a8fbf4-501ff700000014c1-76-5ce2705a2d97
Received: from smtp.reu.rohmeu.com (will-cas002.reu.rohmeu.com
 [192.168.251.178])
 by mailgate1.rohmeurope.com (Symantec Messaging Gateway) with SMTP id
 19.E3.05313.A5072EC5; Mon, 20 May 2019 11:16:10 +0200 (CEST)
Received: from WILL-MAIL001.REu.RohmEu.com ([fe80::2915:304f:d22c:c6ba]) by
 WILL-CAS002.REu.RohmEu.com ([fe80::fc24:4cbc:e287:8659%12]) with mapi id
 14.03.0439.000; Mon, 20 May 2019 11:15:58 +0200
From: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
To: "leonard.crestez@nxp.com" <leonard.crestez@nxp.com>, "broonie@kernel.org"
 <broonie@kernel.org>, "lee.jones@linaro.org" <lee.jones@linaro.org>
Subject: Re: [PATCH 2/3] dt-bindings: mfd: Document short/long press
 duration for bd718x7
Thread-Topic: [PATCH 2/3] dt-bindings: mfd: Document short/long press
 duration for bd718x7
Thread-Index: AQHVDunRCadIZXhO4kmv1F92tFVodqZzmfCA
Date: Mon, 20 May 2019 09:15:57 +0000
Message-ID: <79db32fef865216dc51d40b8bed81b45943b2687.camel@fi.rohmeurope.com>
References: <cover.1558341613.git.leonard.crestez@nxp.com>
 <6983773421a6d89b7c206a71684a95c83eef118b.1558341613.git.leonard.crestez@nxp.com>
In-Reply-To: <6983773421a6d89b7c206a71684a95c83eef118b.1558341613.git.leonard.crestez@nxp.com>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [213.255.186.46]
Content-ID: <802EDE242BBF104DA2859AA9C0EA6AB1@de.rohmeurope.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01TWUwTURT1zVKG2iHPWu2zKpFGcRdQEyeRqD8mox+ERIwJVnGQkRK6OVMI
 6IcQ0cQaxQWINKKILBUxysgHEBCsENDEBReMqQqliDtGxJWgzlAUvt6599xzz73JfRSuvaUy
 UGk2Jy/YOItRpSZaPSPS8kRHnym6ZUjLDBc24kygxweYQn+/ijnfdo9kaq/7CKa6sIFger62
 A8bz4jPJSIFuknH9uoQzFU+7MOZQc1sI86ZOzxy9dhdsCGMLXR7A1pyrAaxUfUTFPu9uUrHX
 yw+wtYP1GJs/Gs1+kcLjqcSpscmcM3NLWqotat2uqebeph+Yow7Pym0rw3KAB3eBUArB1ejl
 hwrMBdSUFnYDlFc6RAaDToAKqjpCXICiVDAWuZ6FKHkdPA1Q/+UAUAIcXiLQqTw3obSaDrej
 rvxbY1gHTeib9AQE8Uo00lswlifgAnQjcCxEwTSMQxc/VY5b5wNU3NI8VhQKd6ILPj+pYADn
 oiM5g5iCcahH0sB3Mjg3ROVN98d3mIHeBn6P542o+aefUKbG4WJ0tTEqKN2ApMNniCCOQAVH
 /eMzTEO3i/uJE2Cme5KDe0LtnqR2T1K7J6lLAVkNkJVLs6RyTj5mhcBnrBDsZqv87LZbJRA8
 g+F68Me7yQsgBYwaWpPeZ9KSXKaYbfWCWRRmnEF/P+03acOS7SnZZk40JwkZFl70AkThRh29
 amGPSUuncNn7eMH+j5pNEUY9PdJ406SFinM6zzt44R87h6KMiN5vk32mCXwqn7UnzeKcoDEq
 VGmuNuhE3pbCC1yG05yk3EuSKB+MQmlk322KnBYdnFXOBqV3wFKqtcxfglMfb74uwbWEzW7j
 DXp6wCqXQqXUnGH7b/QO6OV9p9P3lUYa+Wf87/NOtsBki3UJYxZOboIy5ID0V1FE+/p5DZmn
 iKJ4a/KehMu978MXbZ4bdaNGvSaxclZu1yAWF9lijvR6fml2vF+8zK+rbQxX95GdAzXHrexo
 WIIl2tfwsCOwqMHXGlHfJL0qzh+NW5sgwpSNAycfPWhvdjwevbK3ipttsMfM3HXw5Pzy5IN5
 bVOEs1tji94kkkZCNHMxS3BB5P4CUZ6PHtYDAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_021613_379171_BBED3712 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.15.145.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "angus@akkea.ca" <angus@akkea.ca>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "yibin.gong@nxp.com" <yibin.gong@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks Leonard!

This is how it should've been done from the beginning =)

On Mon, 2019-05-20 at 08:55 +0000, Leonard Crestez wrote:
> These valeus can be overwritten at probe time.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Acked-By: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
