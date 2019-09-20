Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B0EB95F0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 18:45:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:Subject:From:References:To:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YPmcX0odH2nTIT4ZBMBriGpjT8mrjygh7JhEUvR86dg=; b=OgUDbuIO7GSBZ1n2bWgVCd2PXF
	4KiaZJ1QIc75Fs3KOFSDQlc1AVMNLQX8D/wyN6KFKSPueT5falXv4q4X0G7OiyPsgabRr6OuLRjDJ
	pQC7apoj4k7d+EpIHOdHj0Obli0c9ZDUKGqGgzh0eUGcLkiBzl7lqkuBQg4kc4cAGnVe9F2eAHNq/
	lSHtB8qxPZHMGq9tCQUi0Hb5KMSYc3IH9TtA0PGBqf+VfUKdD1XLp0STyyLjN+U4y7Qtlm3lZHqxv
	gc9KFvcaxiUNc1ZecuKnvMxRGvwxafhcqC+5McMtKt/BP+OlPgeV3bnGa248TKBa5jwTE6KgRPgcb
	POcJlh2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBM2P-00081W-MB; Fri, 20 Sep 2019 16:45:41 +0000
Received: from gateway31.websitewelcome.com ([192.185.143.234])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBM2I-00080T-Sd
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 16:45:36 +0000
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
 by gateway31.websitewelcome.com (Postfix) with ESMTP id 598DFFACB
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 11:45:22 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id BM26iWhCS3Qi0BM26i7ZVd; Fri, 20 Sep 2019 11:45:22 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:Subject:From:References:To:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5iTGY/iZKBM5pTYJE4uJXR7l9zLmKTHVaxZNgy/AAJ0=; b=oQg+QDU/KnmpswhtXGTEs6gy4L
 lDCFWbcZsUApx5t/2BUBcxJaAKauYHjsUYAIJ5il3L57iXLo8PSW8FRlROy9cQlQqfBwPP0IKqoTZ
 xl6qkWiEapThHHk/7hP6mrr7vYkq63fkPXPobZNiUQLZqgbcijfz/qf1I4qTNJZgyaiTJ9TAwmt/k
 m/m04M+eAdDzc9084QU5eaigb4iddCx03nPQgGAWuBLAbVTjqgC4xaig2K2d8MiatFL9JnAgi17lK
 qsKi+62l+HWBYEMo4vP3IZZHNntUqXGTUWK2gOPL7pzBoPB/6aveKxf+Cw3D2kbuZEirwATpBJLvj
 40QfZWyQ==;
Received: from lfbn-1-12653-249.w90-90.abo.wanadoo.fr ([90.90.196.249]:34510
 helo=[192.168.1.21]) by gator4166.hostgator.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1iBM25-002h2k-LH; Fri, 20 Sep 2019 11:45:21 -0500
To: Felix Fietkau <nbd@nbd.name>, linux-wireless@vger.kernel.org,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>, Roy Luo
 <royluo@google.com>, Kalle Valo <kvalo@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Networking <netdev@vger.kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ryder Lee <ryder.lee@mediatek.com>
References: <20190704155324.56693-1-nbd@nbd.name>
 <20190704155324.56693-4-nbd@nbd.name>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Openpgp: preference=signencrypt
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 mQINBFssHAwBEADIy3ZoPq3z5UpsUknd2v+IQud4TMJnJLTeXgTf4biSDSrXn73JQgsISBwG
 2Pm4wnOyEgYUyJd5tRWcIbsURAgei918mck3tugT7AQiTUN3/5aAzqe/4ApDUC+uWNkpNnSV
 tjOx1hBpla0ifywy4bvFobwSh5/I3qohxDx+c1obd8Bp/B/iaOtnq0inli/8rlvKO9hp6Z4e
 DXL3PlD0QsLSc27AkwzLEc/D3ZaqBq7ItvT9Pyg0z3Q+2dtLF00f9+663HVC2EUgP25J3xDd
 496SIeYDTkEgbJ7WYR0HYm9uirSET3lDqOVh1xPqoy+U9zTtuA9NQHVGk+hPcoazSqEtLGBk
 YE2mm2wzX5q2uoyptseSNceJ+HE9L+z1KlWW63HhddgtRGhbP8pj42bKaUSrrfDUsicfeJf6
 m1iJRu0SXYVlMruGUB1PvZQ3O7TsVfAGCv85pFipdgk8KQnlRFkYhUjLft0u7CL1rDGZWDDr
 NaNj54q2CX9zuSxBn9XDXvGKyzKEZ4NY1Jfw+TAMPCp4buawuOsjONi2X0DfivFY+ZsjAIcx
 qQMglPtKk/wBs7q2lvJ+pHpgvLhLZyGqzAvKM1sVtRJ5j+ARKA0w4pYs5a5ufqcfT7dN6TBk
 LXZeD9xlVic93Ju08JSUx2ozlcfxq+BVNyA+dtv7elXUZ2DrYwARAQABtCxHdXN0YXZvIEEu
 IFIuIFNpbHZhIDxndXN0YXZvQGVtYmVkZGVkb3IuY29tPokCPQQTAQgAJwUCWywcDAIbIwUJ
 CWYBgAULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRBHBbTLRwbbMZ6tEACk0hmmZ2FWL1Xi
 l/bPqDGFhzzexrdkXSfTTZjBV3a+4hIOe+jl6Rci/CvRicNW4H9yJHKBrqwwWm9fvKqOBAg9
 obq753jydVmLwlXO7xjcfyfcMWyx9QdYLERTeQfDAfRqxir3xMeOiZwgQ6dzX3JjOXs6jHBP
 cgry90aWbaMpQRRhaAKeAS14EEe9TSIly5JepaHoVdASuxklvOC0VB0OwNblVSR2S5i5hSsh
 ewbOJtwSlonsYEj4EW1noQNSxnN/vKuvUNegMe+LTtnbbocFQ7dGMsT3kbYNIyIsp42B5eCu
 JXnyKLih7rSGBtPgJ540CjoPBkw2mCfhj2p5fElRJn1tcX2McsjzLFY5jK9RYFDavez5w3lx
 JFgFkla6sQHcrxH62gTkb9sUtNfXKucAfjjCMJ0iuQIHRbMYCa9v2YEymc0k0RvYr43GkA3N
 PJYd/vf9vU7VtZXaY4a/dz1d9dwIpyQARFQpSyvt++R74S78eY/+lX8wEznQdmRQ27kq7BJS
 R20KI/8knhUNUJR3epJu2YFT/JwHbRYC4BoIqWl+uNvDf+lUlI/D1wP+lCBSGr2LTkQRoU8U
 64iK28BmjJh2K3WHmInC1hbUucWT7Swz/+6+FCuHzap/cjuzRN04Z3Fdj084oeUNpP6+b9yW
 e5YnLxF8ctRAp7K4yVlvA7kCDQRbLBwMARAAsHCE31Ffrm6uig1BQplxMV8WnRBiZqbbsVJB
 H1AAh8tq2ULl7udfQo1bsPLGGQboJSVN9rckQQNahvHAIK8ZGfU4Qj8+CER+fYPp/MDZj+t0
 DbnWSOrG7z9HIZo6PR9z4JZza3Hn/35jFggaqBtuydHwwBANZ7A6DVY+W0COEU4of7CAahQo
 5NwYiwS0lGisLTqks5R0Vh+QpvDVfuaF6I8LUgQR/cSgLkR//V1uCEQYzhsoiJ3zc1HSRyOP
 otJTApqGBq80X0aCVj1LOiOF4rrdvQnj6iIlXQssdb+WhSYHeuJj1wD0ZlC7ds5zovXh+FfF
 l5qH5RFY/qVn3mNIVxeO987WSF0jh+T5ZlvUNdhedGndRmwFTxq2Li6GNMaolgnpO/CPcFpD
 jKxY/HBUSmaE9rNdAa1fCd4RsKLlhXda+IWpJZMHlmIKY8dlUybP+2qDzP2lY7kdFgPZRU+e
 zS/pzC/YTzAvCWM3tDgwoSl17vnZCr8wn2/1rKkcLvTDgiJLPCevqpTb6KFtZosQ02EGMuHQ
 I6Zk91jbx96nrdsSdBLGH3hbvLvjZm3C+fNlVb9uvWbdznObqcJxSH3SGOZ7kCHuVmXUcqoz
 ol6ioMHMb+InrHPP16aVDTBTPEGwgxXI38f7SUEn+NpbizWdLNz2hc907DvoPm6HEGCanpcA
 EQEAAYkCJQQYAQgADwUCWywcDAIbDAUJCWYBgAAKCRBHBbTLRwbbMdsZEACUjmsJx2CAY+QS
 UMebQRFjKavwXB/xE7fTt2ahuhHT8qQ/lWuRQedg4baInw9nhoPE+VenOzhGeGlsJ0Ys52sd
 XvUjUocKgUQq6ekOHbcw919nO5L9J2ejMf/VC/quN3r3xijgRtmuuwZjmmi8ct24TpGeoBK4
 WrZGh/1hAYw4ieARvKvgjXRstcEqM5thUNkOOIheud/VpY+48QcccPKbngy//zNJWKbRbeVn
 imua0OpqRXhCrEVm/xomeOvl1WK1BVO7z8DjSdEBGzbV76sPDJb/fw+y+VWrkEiddD/9CSfg
 fBNOb1p1jVnT2mFgGneIWbU0zdDGhleI9UoQTr0e0b/7TU+Jo6TqwosP9nbk5hXw6uR5k5PF
 8ieyHVq3qatJ9K1jPkBr8YWtI5uNwJJjTKIA1jHlj8McROroxMdI6qZ/wZ1ImuylpJuJwCDC
 ORYf5kW61fcrHEDlIvGc371OOvw6ejF8ksX5+L2zwh43l/pKkSVGFpxtMV6d6J3eqwTafL86
 YJWH93PN+ZUh6i6Rd2U/i8jH5WvzR57UeWxE4P8bQc0hNGrUsHQH6bpHV2lbuhDdqo+cM9eh
 GZEO3+gCDFmKrjspZjkJbB5Gadzvts5fcWGOXEvuT8uQSvl+vEL0g6vczsyPBtqoBLa9SNrS
 VtSixD1uOgytAP7RWS474w==
Subject: Re: [PATCH 4/4] mt76: mt7615: sync with mt7603 rate control changes
Message-ID: <ee49c064-1ea6-8262-7672-b91d1a9a037e@embeddedor.com>
Date: Fri, 20 Sep 2019 18:44:31 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190704155324.56693-4-nbd@nbd.name>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 90.90.196.249
X-Source-L: No
X-Exim-ID: 1iBM25-002h2k-LH
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: lfbn-1-12653-249.w90-90.abo.wanadoo.fr ([192.168.1.21])
 [90.90.196.249]:34510
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 9
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_094535_004494_99C7717C 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.143.234 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

On 7/4/19 10:53, Felix Fietkau wrote:
[..]
> +	for (i = 0, idx = first_idx; count && idx <= last_idx; idx++) {
> +		struct ieee80211_tx_rate *cur_rate;
> +		int cur_count;
>  
> -		info->status.rates[i].count = cur_count;
> -		final_idx = i;
> +		cur_rate = &rs->rates[idx / 2];
> +		cur_count = min_t(int, MT7615_RATE_RETRY, count);
>  		count -= cur_count;
> +
> +		if (idx && (cur_rate->idx != info->status.rates[i].idx ||
> +			    cur_rate->flags != info->status.rates[i].flags)) {
> +			i++;
> +			if (i == ARRAY_SIZE(info->status.rates))

Is this actually possible  ^^^^^^^ ?? in case it is, see my comments below...

> +				break;
> +
> +			info->status.rates[i] = *cur_rate;
> +			info->status.rates[i].count = 0;
> +		}
> +
> +		info->status.rates[i].count += cur_count;
>  	}
>  
>  out:
> -	final_rate_flags = info->status.rates[final_idx].flags;
> +	final_rate_flags = info->status.rates[i].flags;

There is an out-of-bounds access here........^^^ and see below...

>  
>  	switch (FIELD_GET(MT_TX_RATE_MODE, final_rate)) {
>  	case MT_PHY_TYPE_CCK:
> @@ -713,8 +778,8 @@ static bool mt7615_fill_txs(struct mt7615_dev *dev, struct mt7615_sta *sta,
>  		return false;
>  	}
>  
> -	info->status.rates[final_idx].idx = final_rate;
> -	info->status.rates[final_idx].flags = final_rate_flags;
> +	info->status.rates[i].idx = final_rate;
> +	info->status.rates[i].flags = final_rate_flags;

here too ............... ^^^^

>  
>  	return true;
>  }

--
Gustavo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
