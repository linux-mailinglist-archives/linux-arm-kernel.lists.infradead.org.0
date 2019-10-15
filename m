Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A58D8061
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 21:36:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=31nB91Ahb2kKPM+iMT43nD+tWs46uErmdtnICgKzqOo=; b=A5TZN1bZM6XGt1
	+t/zo9xLlZNBxgOaWCzxV/r232iZ9RiEV9lOkXiNkqasC5Jv0o7f2+bfUWmZmhXrm1Pn8oJiYS0g9
	Iqlzi23tiOF0eXK7Ux2BD6+eZy/1kf+OOr0rnzxv5j9Ckwuqv4sSzqeeNNt4igKZzGeqoCK2smTu/
	On0fXA4yJ23hlMrbCa9VmeEiIPUC+PEjD02A23QDhfucDzEbZKQ0HS/YtnUdEniybdYZWDGz8YtSF
	YCMDSg/dFMq9E5iZinv27CX4TaxjcVjGJ2AF0zZPYi2mhYvCqP+8CuCYOimn+vAFP4l/5ivnbWf9v
	sTAxi35DoxHj36Bi7dTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKScC-0001La-Tg; Tue, 15 Oct 2019 19:36:16 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKSc3-0001Kz-4s; Tue, 15 Oct 2019 19:36:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1571168148;
 bh=8CtZdk//uT3mD5UzLBd+cEolu2bZMY/XSWPKvl77iw0=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=GtKf/9+n3AwqBfQQfX9adpD3gPsyKPR2YKPBuvzNb5Qd3jN8m0kO9xrMsMNxbeERW
 y27/AeTxcmP5rcgwgWWPNyGMDCISMV8/p7yeARZymdLWC5Y6TpLcsHfKh66lYdUm8K
 JkkHCq8aDPiNal0Zt/OS73x4NFmqvqy0Tr/g5pJE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.112]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MJmKh-1iearN1SK9-00K63U; Tue, 15
 Oct 2019 21:35:48 +0200
Subject: Re: [PATCH v1 3/3] ARM: dts: bcm2711: Enable GENET support for the
 RPi4
To: Florian Fainelli <f.fainelli@gmail.com>, matthias.bgg@kernel.org,
 "David S . Miller" <davem@davemloft.net>
References: <20191011184822.866-1-matthias.bgg@kernel.org>
 <20191011184822.866-4-matthias.bgg@kernel.org>
 <a514751e-e82a-b5ea-34d3-46468c851a80@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <7ac16f46-8f75-a91a-c096-7645da8f044a@gmx.net>
Date: Tue, 15 Oct 2019 21:35:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <a514751e-e82a-b5ea-34d3-46468c851a80@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:WJUZ0VvS2rEzkhQZcFikR4IvYJzLmGQBvy4te06VSqGg/4lR+v8
 gH+1SiXGIh2ZeN2Bidjxg1HQMyO8XuwtSk5bAflNdJx3XLft2M4Y7VrABhA9dFsMVpSqBGP
 wgvvuLzS03PwqHCefpFa8n4CkYSy+c7kvVEntLdYiPuSySrVcsYiYmkplEDK9LJ3BNpbMBN
 6NBpyK9r3gyxIzqAgeg0Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6NCl5YU0F1c=:UqxKtymJXFQBSh/VJde4rl
 H/4yHI7y4KLeiL0vJQbqhPKjoE9y4ynssQ5MG6pWmiQqRa9B1T1FW7QZMJmydiX+Z2nkdjpcI
 qHjtTP4DxUMM+WehFU9H9uq4Qtgd1muixOn8U9C+BHzha/coD2kyz3vH2px0d+Qn2N5ITyx/9
 0l5hbATotfHHCkRyX1ARgtaDhNX+tifYuySkq996cDYbNwSkf7oSVO2hakgL2NF9ffGpkKD8L
 YTURIf8B0wQ7aQqW81v2St891OWA5G7ZhNqlpCpgsFE/Rl4NlX5pX6fxrz8MYbSpRZ0rCdAbF
 8YCnV44MjA2rVMD9FxuL7Ym40V+KeCEkXNa44ssHhr/YlXln1dIehgfrpUHHXJd4VKi0yQklR
 CseAlSLrfvLhIeBAeEcR/Ew7H6OtTGzNmUw2Hg/hIFNoUmAQTm/TXxIondk9SeQh07pg24/sO
 oA8FgvvoQNokuC26xvilTkWAk8wwY2bNVKh/y/7REgn8wsVx/vPTRHfp248ONJIi2sgJVVq6f
 PXufm7dVLil8xugop8WIDpoL5PL1mIufaLsKcIj9fR0HjifASfA2saId8BOOMDrckVV38ZZO0
 wz8jQU8Q1uFwycupylT5wQPDLQpJv5WFs7dmiBJew7qGNih/0kJsCTuWhG8YaQ5/V3D8EwC5k
 kO9rUFFYigyhaDonSx8dtI+HVb3OWrjtf+CYgNJQIdIKh1uIKdKsNpC2cOKS+MuXBME/onRhL
 XKCIB78Zt8p1JZFJEWGvdGeHZooVU3M+NRt37XoTqGpwKq16aRnucUuTwWYBWT2fA9auE1BGg
 Hnmen07mk/6KU/20M9pXaEyb8OjnBM7VUL9EorseyP+QaXYnPprjowfyb++2kfSEdgCrrxnJX
 uOilv3uXgpLjr8SyDkrbo//hWsPDt6XqnwECfZSOqHAWI6I3kLubW1Ft5BNLQqOt32ufdRBrv
 QRdqyVGuZ9G73mpGhnHY6hzF8StoProePrni/iXcjXZc+pKZrRyDup/pZ2VtnzcIAzTDst3ah
 Ovzmw66eyn77d2PcJjn394+z/FZB1TH8+rrc4Qd8EVR7PX5w8QDFY9BE5WaAg1eUEloKCfGM6
 PckBgSsdP/1QEObbrkRbRFIya9m0Z20YHaQeybgvGdxoxK+MS3fVH/n/Ln4LvaXdbVw5e7fZG
 bd7WEfN3DfcSYsEkVPGWrJJg4FUFZjFwrrGn6/K2j+AJItPawInKiZvACqKNH8LiLAs/3kRnD
 K/udraqJUtuwlkHnJOUaXcuYuwHQmORb5o7aDGltEGhMfUJVjbdXs2qIPp+s=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_123607_524486_A2A557A3 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Matthias Brugger <mbrugger@suse.com>, linux-kernel@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

Am 11.10.19 um 21:31 schrieb Florian Fainelli:
> On 10/11/19 11:48 AM, matthias.bgg@kernel.org wrote:
>> From: Matthias Brugger <mbrugger@suse.com>
>>
>> Enable Gigabit Ethernet support on the Raspberry Pi 4
>> Model B.
>>
>> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
>>
>> ---
>>
>>  arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 22 ++++++++++++++++++++++
>>  arch/arm/boot/dts/bcm2711.dtsi        | 18 ++++++++++++++++++
>>  2 files changed, 40 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
>> index cccc1ccd19be..958553d62670 100644
>> --- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
>> +++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
>> @@ -97,6 +97,28 @@
>>  	status = "okay";
>>  };
>>
>> +&genet {
>> +	phy-handle = <&phy1>;
>> +	phy-mode = "rgmii";
> Can you check that things still work against David Miller's net-next?
> Tree, in particular the BCM54213PE PHY might be matched by the BCM54210E
> entry in drivers/net/phy/broadcom.c and I just fixed an issue in how
> RGMII delays were configured:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git/commit/?id=fea7fda7f50a6059220f83251e70709e45cc8040
>
> This might require you to change the 'phy-mode' property to what is
> appropriate.

since i didn't get a reply from the Pi folks yet, i tried all the other
rgmii variants on top of this branch [1].

But none of them worked.

In case of "rgmii-id" i'm getting:

unknown phy mode: 9

and for "rgmii-rxid":

unknown phy mode: 10

In those cases the PHY didn't even probe. Did i missed something?

[1] - https://github.com/lategoodbye/rpi-zero/commits/bcm2711-genet


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
