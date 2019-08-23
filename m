Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7DE9A46E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 02:51:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=A61DOP04Nni0ay+qBdwK4MARF2CaFGHlFI0mU9MBKpY=; b=qtluQZuFO8i6fY
	A9ipEQIFASi9WX7Z/LufctYrc/E74+zDc86K4/DtJM1qCeUVq4nmT2oinbVIEc8LYnMoc9qGva138
	yI3aS1ZWaoqk/azdGmx9eoHJzYfZopcLMwaHThLBXzwkk17kv96YHvNBRfZe7j2VEbj6fmgyvy/qk
	PixT583rzkQRRxQXG+WdeEcf3aE9jAIFkQB8c0LulR5l9B9wDEEUFQyTpmez4qA+wAn+KU+vE8MIK
	74DrVhzX26CkIxUaX7PVO3BRZDtKsAIYgfi5X8oX6niFmXSDcjtKlUxv4nRxV6EywsIPh83siNaTw
	Av5++Mf269WeDrH1MrcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0xnB-00068M-J5; Fri, 23 Aug 2019 00:51:01 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0xn1-00067p-JV
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 00:50:53 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190823005045epoutp0346b9e1e68eb62cf2bc2e7a7233ea150a~9ZvReQYR12230622306epoutp03a
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 00:50:45 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190823005045epoutp0346b9e1e68eb62cf2bc2e7a7233ea150a~9ZvReQYR12230622306epoutp03a
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566521445;
 bh=f2ThUHwqU6SxyDkaBykTiPQlcm0wcRMy3IpQiQiChcs=;
 h=From:To:Cc:Subject:Date:References:From;
 b=qjJP3CPDZUoPqC+TllhSHlEzayDCNEEA/ZeZhRffZlSa6IWzZNyyy/WghomGNCSH3
 Ll12acSDQNebr7Gm85XsT73lLM+iAcMPvCd+fTuz8IXicflKfBccxTrV2stA77r50K
 SbznIaYWExt+HtvjAggHXAnol3/leqScWyxLjaic=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20190823005044epcas2p4d26d2085b61ee54bd5954b1c574ebbe6~9ZvRA3S2Y1951719517epcas2p4w;
 Fri, 23 Aug 2019 00:50:44 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.40.184]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 46F2rL3vD7zMqYkk; Fri, 23 Aug
 2019 00:50:42 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 5E.38.04149.2683F5D5; Fri, 23 Aug 2019 09:50:42 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
 20190823005041epcas2p3c8550c3fabbd6a6db6429cb06dbbf3a6~9ZvObUZVL1059310593epcas2p3U;
 Fri, 23 Aug 2019 00:50:41 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190823005041epsmtrp1e67b842e0eeb29d74f2dcb22b227f249~9ZvOaIzfb2194621946epsmtrp1o;
 Fri, 23 Aug 2019 00:50:41 +0000 (GMT)
X-AuditID: b6c32a46-fd5ff70000001035-b2-5d5f38625f08
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 F7.1A.03706.1683F5D5; Fri, 23 Aug 2019 09:50:41 +0900 (KST)
Received: from KORDO035251 (unknown [12.36.165.204]) by epsmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20190823005041epsmtip2748af0669304060f493849067826a76f~9ZvOI_Fjj0682606826epsmtip2h;
 Fri, 23 Aug 2019 00:50:41 +0000 (GMT)
From: "boojin.kim" <boojin.kim@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
Subject: Re: [PATCH 1/9] crypt: Add diskcipher
Date: Fri, 23 Aug 2019 09:50:41 +0900
Message-ID: <00da01d5594c$c9d87390$5d895ab0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdVZTE1TDvDE+uWuReO+5O58h7ifGg==
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprFLsWRmVeSWpSXmKPExsWy7bCmhW6SRXysweKVkhZfv3SwWKw/dYzZ
 YvXdfjaL01PPMlnMOd/CYrH33WxWi7V7/jBbdL+SsXiyfhazxY1fbawW/Y9fM1ucP7+B3WLT
 42usFntvaVvcv/eTyWLmvDtsFpcWuVu8mveNxWLP3pMsFpd3zWGzOPK/n9Fixvl9TBZtG78y
 WrT2/GS3OL423EHSY8vKm0weLZvLPbYdUPW4fLbUY9OqTjaPO9f2sHlsXlLvsXvBZyaPpjNH
 mT3e77vK5tG3ZRWjx+dNcgE8UTk2GamJKalFCql5yfkpmXnptkrewfHO8aZmBoa6hpYW5koK
 eYm5qbZKLj4Bum6ZOUC/KymUJeaUAoUCEouLlfTtbIryS0tSFTLyi0tslVILUnIKDA0L9IoT
 c4tL89L1kvNzrQwNDIxMgSoTcjI6Ly5kKvjFXLFyz1PWBsaJzF2MnBwSAiYSL6bdBLK5OIQE
 djBKHLn/Csr5xCix9PRDFgjnG6PEowUX2GFafl3vYoNI7GWUuPn/HVTLS0aJna+nsoBUsQlo
 S2w+vooRxBYR0JXYfGM5O0gRs8A/doknnw6BFQkL6EnMeLCYCcRmEVCV2PysF2gsBwevgKXE
 q49qIGFeAUGJkzOfgJUzC8hLbH87B+pwBYkdZ19DzdeTeN4xnR2iRkRidmcb2EESAj/ZJSb9
 ameBaHCR6JtwBcoWlnh1fAvUO1ISL/vboOx6iavLFrNDNPcwSpz5BZMwlpj1rJ0R5DhmAU2J
 9bv0QUwJAWWJI7egbuOT6Dj8lx0izCvR0SYE0agiMffTZSaIsJTEh546iLCHRPPBDrYJjIqz
 kDw5C8mTs5A8Mwth7QJGllWMYqkFxbnpqcVGBUbIkb2JEZwvtNx2MC4553OIUYCDUYmHt6Aj
 LlaINbGsuDL3EKMEB7OSCG/ZRKAQb0piZVVqUX58UWlOavEhRlNgFExklhJNzgfmsrySeENT
 IzMzA0tTC1MzIwslcd5N3DdjhATSE0tSs1NTC1KLYPqYODilGhhb2VZ9bj/4j9m9Iuf7vUUs
 J3MWHf0j1lTS2eO4QTdzw8b5G6K8pjDqvjtzN9nhxX13G1vnkq0G1TZrtL/4bHvHupRDP5rx
 VqSo+KHqV+sObK02DLrOElD9o+/Xi+W1bfOcdJRutyZXXz9cM4dTcjbnAX/x5gzHh1uvntDf
 efu79KO5c470TF6hxFKckWioxVxUnAgA7+Q96S0EAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrFIsWRmVeSWpSXmKPExsWy7bCSvG6iRXyswZrzuhZfv3SwWKw/dYzZ
 YvXdfjaL01PPMlnMOd/CYrH33WxWi7V7/jBbdL+SsXiyfhazxY1fbawW/Y9fM1ucP7+B3WLT
 42usFntvaVvcv/eTyWLmvDtsFpcWuVu8mveNxWLP3pMsFpd3zWGzOPK/n9Fixvl9TBZtG78y
 WrT2/GS3OL423EHSY8vKm0weLZvLPbYdUPW4fLbUY9OqTjaPO9f2sHlsXlLvsXvBZyaPpjNH
 mT3e77vK5tG3ZRWjx+dNcgE8UVw2Kak5mWWpRfp2CVwZnRcXMhX8Yq5YuecpawPjROYuRk4O
 CQETiV/Xu9i6GLk4hAR2M0qc+72aHSIhJbG1fQ9UkbDE/ZYjrBBFzxklDhw4BVbEJqAtsfn4
 KkYQW0RAV2LzjeVgcWaBaRwSuz6Ig9jCAnoSMx4sZgKxWQRUJTY/6wXaxsHBK2Ap8eqjGkiY
 V0BQ4uTMJywgYWag8raNjBBT5CW2v50DdYKCxI6zr6E26Uk875gOtUlEYnZnG/MERsFZSCbN
 Qpg0C8mkWUg6FjCyrGKUTC0ozk3PLTYsMMxLLdcrTswtLs1L10vOz93ECE4BWpo7GC8viT/E
 KMDBqMTDW9ARFyvEmlhWXJl7iFGCg1lJhLdsIlCINyWxsiq1KD++qDQntfgQozQHi5I479O8
 Y5FCAumJJanZqakFqUUwWSYOTqkGxpkCz5+oMws9PX3b/Iwkf+SF3W8rQ53jHge67jXfcttX
 XfWf/YkDt2PWHm6XO/JJRet0fPHMFRtncfxadl8yhy+f9dwq5ZWcKeFMbiHrX7L3Sj37OZvd
 4obsuk/CfvZi882OzLqbKXEtsXAff8/CwM0+Hnof3BSz71z2LO/ouybA31ka2n+AWYmlOCPR
 UIu5qDgRAIuCqND9AgAA
X-CMS-MailID: 20190823005041epcas2p3c8550c3fabbd6a6db6429cb06dbbf3a6
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190823005041epcas2p3c8550c3fabbd6a6db6429cb06dbbf3a6
References: <CGME20190823005041epcas2p3c8550c3fabbd6a6db6429cb06dbbf3a6@epcas2p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_175051_885114_44988C46 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: 'Ulf
 Hansson' <ulf.hansson@linaro.org>, 'Mike Snitzer' <snitzer@redhat.com>,
 dm-devel@redhat.com, 'Andreas Dilger' <adilger.kernel@dilger.ca>,
 'Alasdair Kergon' <agk@redhat.com>, 'Eric Biggers' <ebiggers@kernel.org>,
 linux-samsung-soc@vger.kernel.org, 'Herbert Xu' <herbert@gondor.apana.org.au>,
 'Krzysztof Kozlowski' <krzk@kernel.org>,
 'Jaehoon Chung' <jh80.chung@samsung.com>, 'Kukjin Kim' <kgene@kernel.org>,
 linux-ext4@vger.kernel.org, 'Chao Yu' <chao@kernel.org>,
 linux-block@vger.kernel.org, linux-fscrypt@vger.kernel.org,
 'Jaegeuk Kim' <jaegeuk@kernel.org>, linux-arm-kernel@lists.infradead.org,
 'Jens Axboe' <axboe@kernel.dk>, 'Theodore Ts'o' <tytso@mit.edu>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, "'David S. Miller'" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 22 Aug 2019 at 17:37, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Your patch looks corrupted - wrapped by mailer. The easiest way
> usually is to use git format-patch and git send-email - then you do
> not have to worry about formatting etc.
>
> Best regards,
> Krzysztof

I'm using outlook instead of 'git send-email' because of workplace policy.
It's probably broken when I copied the code.
Thanks for your notice. I will be more careful.

Thanks for your reply
Boojin Kim.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
