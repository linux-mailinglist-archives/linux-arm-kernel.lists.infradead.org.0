Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A24FBD62
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 02:17:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2YMuLqVxCSd/h8dfxqUyBh4EERFwSsjJDUeePf8Onlk=; b=V2ui78xhQ0gUqS
	fFJEgQUIYKeRasm7BimjhN7mgbVGXQ0kBwULYI6owSeQ2QDxztbURLfPxcr1/X0FXq84DvwEQrSPe
	2oZZcg4yzw0vooisjcQiDs3qSaDsKJs//ykHGhPgyY7Cp/t/5t09Ie2mRUVZEq1I8+junYiEFtSwC
	dNGPoycvhpTkQdayT+nTTVFFtUdrrerw9DcD9+JOmpeunBl8zlfh+xDlszG3C+cpO5g7B/wo2A09J
	yAPKPdIHhqhoisHxdPn2qhai2Kf9SFauu4XqSm80xB2UQD9VsfBx+BiHpOhkJapewrAgT61Z+1GiT
	lyueiexeP72JOrYZj2nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV3lV-0006AF-Nr; Thu, 14 Nov 2019 01:17:41 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV3lO-00069h-Da
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 01:17:35 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20191114011730epoutp01324719b68d5124a1e524168657fdbc0c~W4pUpIV0H1052310523epoutp01e
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 01:17:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20191114011730epoutp01324719b68d5124a1e524168657fdbc0c~W4pUpIV0H1052310523epoutp01e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1573694250;
 bh=FXBWpKlesXfLLw3BqLNBcPCoTpNabhJYTRJ9xcKy+2s=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=mkMgCkh7haAsJsDxoNUTG5lTAJamuYbXWULXUnWZZjPNh11n8rhY3hokj+wWkMuZS
 /eEWnaji/JfhVh7YymU8CddAeRYucpSfyb9wKaTK97tyytyLE/qStZ8RTPwbOE0B0r
 goh2BSuU4nXo2PPEEbu7JtMg3Kb0G7clJ27u7UXI=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191114011729epcas1p4b78b1369c535049f005d7e52a60c58b9~W4pTyfXwJ2168921689epcas1p4L;
 Thu, 14 Nov 2019 01:17:29 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.153]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 47D3Vt6J7zzMqYkm; Thu, 14 Nov
 2019 01:17:26 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 57.2B.04144.22BACCD5; Thu, 14 Nov 2019 10:17:22 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191114011722epcas1p21cf9970859318b0dec0e9ab652f4e29a~W4pNo2ez71298012980epcas1p2v;
 Thu, 14 Nov 2019 01:17:22 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191114011722epsmtrp2bcd573bbe8670ed4a7673f4a58ea9ed3~W4pNm8Fey1353513535epsmtrp2V;
 Thu, 14 Nov 2019 01:17:22 +0000 (GMT)
X-AuditID: b6c32a35-2c7ff70000001030-67-5dccab22a2d5
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 6B.6D.24756.22BACCD5; Thu, 14 Nov 2019 10:17:22 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191114011721epsmtip21e0a9e40911214b7cbef6ffecba0a490~W4pNEKs0R2018120181epsmtip2P;
 Thu, 14 Nov 2019 01:17:21 +0000 (GMT)
Subject: Re: [RFC PATCH] PM / devfreq: clk_get_parent_by_index() can be static
To: kbuild test robot <lkp@intel.com>, Leonard Crestez
 <leonard.crestez@nxp.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <71305a8a-9bb0-1317-3618-0ad18295ea92@samsung.com>
Date: Thu, 14 Nov 2019 10:23:07 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191113140710.jynosjegdq7t6igk@4978f4969bb8>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Te0xbVRzHc3ofvZBVL2WsR6JZubiEYQq9sOLZHPgYLjdxiWTLDDEheAM3
 hdBXeimyzWSgYTxFQdAMNmAZSGFMoBSBWYYwdBmvDQyVx3CLkAUXLE7oNMCIfbDIf9/f73y+
 5/c4ORQmH5eGUpmGbMFs4HUMGYh/f+ugSsVcG0tRd9XFoaGfu6XIPToC0LdTPwG0Xn0DQ4sP
 5gHquZiG6ocnCNTZNY+jb/ptJBovdQLUWt2Ho7t3O6Ro/NMVKbIuPCGQbdFJoCdlvxGoZKMF
 Q2ufDwP0+LPfSdT066QEOa0VBFrrWARocuRdNJ9vJdG1iUESjY1OEaigf1iKSoaekWjb2Ymj
 ZbsCdbq5t/Zz1SVWwLXVtQFudaZAytXmTeJcg83CXXX8IeFsrcUkd9/pILnS2m2c62o8z3W6
 eiXcoMsh4b54puY2boVw9ulCnCu3t4KkoA+zjmYIfLpgVgqGNGN6pkEbz7x3KvVYqiZOzarY
 w+h1Rmng9UI8k3giSXU8U+dZF6PM4XUWTyqJF0UmOuGo2WjJFpQZRjE7nhFM6TrTYVOUyOtF
 i0EblWbUH2HV6hiNB/woK2PqhzLc5CZzZ5sugTwwQpSAAArSh+D09W5QAgIpOd0L4Ib1IeYP
 /gawfP2mxEvJ6acAdjTve+4oz9/YgfoBzOvYkvqDVQBbKgeBlwqmk6B7rt6n99InYZur0efA
 6HYKVl14hHsPSDoSDizPkF79Ih0Gp/9d9BlkdALcWi/2aZw+ABtbVj08RYXQyXDUzfuRIHjn
 4pLvmgD6DdhU4fZ1itEKOLdUv6P3w54/L/nqQvoeBZcfDO8MnQjttaU7Ohg+vm2X+nUoXHP1
 k359DrbcGSb95iIA7QP3dgyxcKDpK4m3IYw+CNtvRPvTYbBv8zLwF34ButxlhBeBtAwWXZD7
 kXD4y8MFiV+/BK8WFpNfAqZm1zg1u0ao2TVCzf/FGgDeCvYJJlGvFUTWxO5+bRvwfaVITS+o
 mjgxBGgKMHtkP4aMpcgJPkc8ox8CkMKYvbIIgyclS+fPnBXMxlSzRSeIQ0DjWXYFFhqSZvR8
 TEN2KquJiY2NRYfYOA3LMgrZ281NKXJay2cLWYJgEszPfRIqIDQPOFbC/4pY/O5lsqWunZW/
 3zW40DxnyG04WXk/eVunXZk8FlWovLKVq12KII6rCz62KAKKj0RGKSJ7VLng9OaVd/KDz59z
 zJzFXot95XbRzcrqpxU53QFfzyfvOR2T+Ci4QD/5T8KBKmtZkdkWHRY0q+x5c2xzhQifDUr9
 4JP6wK5X+xhczODZSMws8v8BERQ1KGAEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRzGeXcuO0qr01R8M0EcRCVoCn54oRIhqrcvFSViQdloxwu6KTtq
 KVJaSjhvCU3xklo60XnJTc075pyCOhUnniwrQ7uKl6RWISq5aeC3H8//+T2f/gwh7aA8mGhV
 AqdWyWNltDP5ckDm5Surt9zw15g8kGmoTYxsoyMA1VgHAfql7SLQwtwsQO3Ft1GFeZxChpZZ
 EhX1Gmk0li0ApNd2kmhiolmMxh4siVHt+zUKGRcECq3lfKCQZr2OQD9zzQAtPpynke71pAgJ
 tQUU+tm8ANDkyFk0m15Lo/rxfhpZRq0Uyuw1i5HGtEmjLcFAom+t7shgw8FeWKupBbihvAHg
 1ZlMMS5NmyRxpTERV/V8F2GjPovG74QeGmeXbpG4pfo+Nqx0iHD/So8I52/64/UBN9w6/YjE
 ea16cPngdedTCi42OolTnwi65Rxl7c4h42303Te6MpAGRigNcGIgGwjz0tcJDXBmpGw3gLlF
 ZcTO4RAsnBzcZmabXeDAAG+PpewygObue3Z2YS/C73ObjrorewWaBQtt3yHYNgYKNWX0zuj8
 ttAl0PYWzfrAvm8zDj7AesPpvwvAzhI2CG78ynIwyR6B1XWrpJ3d2DD4tX1mt3MQDhd/cuRO
 7EmoK7CJ7EywR+FGuZXYYXf49lPFbu4F25fLiMfApWSPXrJHKdmjlOxRKgGpB4e4eF4ZqeQD
 4gNU3B0/Xq7kE1WRfrfjlEbg+Cef4x1gqjrcBFgGyPZJXrlZbkgpeRKfrDQByBAyV8kx1XYk
 UciTUzh1XLg6MZbjTeAwQ8rcJZ9VQ9ekbKQ8gYvhuHhO/f8qYpw80kDi2rlnfT9WUjxdLyR3
 6E1LOWMvwvMaFU2rChBzvvOmJFUnSm0t9Kg3f/wdGagAvSjqz/M2/XSjQet9df/wTMYXr9RL
 nslb7rbyyogmXWiQIThGPRIx1Z4Rtlr5JJgPyV8sJXvHqk5Piay+oSHygubhp2yotnBIwZzh
 soT1fBnJR8kDfAg1L/8HdvbQcUsDAAA=
X-CMS-MailID: 20191114011722epcas1p21cf9970859318b0dec0e9ab652f4e29a
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191113140815epcas1p194a07ca0cf4b2776d32a25ee71f804c4
References: <d33acdcc043ce12713a9279636e32d039da5ee54.1573595319.git.leonard.crestez@nxp.com>
 <CGME20191113140815epcas1p194a07ca0cf4b2776d32a25ee71f804c4@epcas1p1.samsung.com>
 <20191113140710.jynosjegdq7t6igk@4978f4969bb8>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_171734_797177_484063B6 
X-CRM114-Status: GOOD (  22.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 kbuild-all@lists.01.org, Anson Huang <Anson.Huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leonard,

Please apply this to next version.

On 11/13/19 11:07 PM, kbuild test robot wrote:
> 
> Fixes: f01e004107f3 ("PM / devfreq: Add dynamic scaling for imx8m ddr controller")
> Signed-off-by: kbuild test robot <lkp@intel.com>
> ---
>  imx8m-ddrc.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/devfreq/imx8m-ddrc.c b/drivers/devfreq/imx8m-ddrc.c
> index 62abb9b79d8a0..228561de94425 100644
> --- a/drivers/devfreq/imx8m-ddrc.c
> +++ b/drivers/devfreq/imx8m-ddrc.c
> @@ -122,7 +122,7 @@ static void imx8m_ddrc_smc_set_freq(int target_freq)
>  	local_irq_enable();
>  }
>  
> -struct clk *clk_get_parent_by_index(struct clk *clk, int index)
> +static struct clk *clk_get_parent_by_index(struct clk *clk, int index)
>  {
>  	struct clk_hw *hw;
>  
> 
> 


-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
