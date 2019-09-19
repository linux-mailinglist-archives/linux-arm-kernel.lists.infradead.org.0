Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6BA9B7A89
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 15:31:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ufz2qWdDpC+scQX/gYJ08XkKaP/eUCv7ptBsbs3DCt8=; b=tKVwARbztbTjyu
	YSveemx2iUcZDVHpBdN3yevgKTZkgU3CDzYdMtmA8+QeBlyJ+adcVjTsk9QE3W0tPjHP8zH22stGr
	kw+Z4JM1NgpNkE/OcwvFNm/7tEnc6PtJ+pp0o6sb+t+wKKSxtYJ8oqJ4mIbcgNKpAkVut6rtwQob3
	jBIzCJ/z3dEcRlhzcW8V91dL+UgZjrR8xlTCpUQSMTGSOok7B9M0PMYmUXK2TYxjZ9Y5ijjITyKq0
	5IHhnjILRJa1y6mPGKGSYMqBoETmiL8+aSxKhcTCRKcb8JitlKlMQX2n4/x+3V7T5sR+iPLZtr/oI
	EzFjkbzmPysTFW5zBoQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAwWr-0000rL-Jh; Thu, 19 Sep 2019 13:31:25 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAwWc-0000qw-Pa
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 13:31:12 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190919133108euoutp02dab13a72cbe9dbfd6c6e8796469024eb~F2h488htE1823018230euoutp02k
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 13:31:08 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190919133108euoutp02dab13a72cbe9dbfd6c6e8796469024eb~F2h488htE1823018230euoutp02k
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568899868;
 bh=FopNKHLEgXvbDmvlUkEcgTZYoBFpfDf+Gxyck3rMI64=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=fS+IYWDkL7UcIoHUx8jvazOe2cXyEEIJ4urwgwNV3mP7DUJjgSofNQEV5krvRm2K5
 jK34AAHm2cksajUoJCaes2U2Qwymxra9xK0/euSnulCGD0LwUJCp5hNsWYLkH6PLKJ
 kvLBIS4aXb/4ilZHSb0ODPdoibWcsIs7PY2f3GoQ=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190919133107eucas1p29c81b0ad1d1a6a82d863b41a661ec2a4~F2h4VBsVA0541405414eucas1p2U;
 Thu, 19 Sep 2019 13:31:07 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 8E.24.04469.B13838D5; Thu, 19
 Sep 2019 14:31:07 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190919133107eucas1p1f9502dca0c106fb9e268f2636b6ec774~F2h3lT5LF2235322353eucas1p1e;
 Thu, 19 Sep 2019 13:31:07 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190919133106eusmtrp2c59c51ddc76296b5bdc00cb72bb23539~F2h3XKIuM3220232202eusmtrp2_;
 Thu, 19 Sep 2019 13:31:06 +0000 (GMT)
X-AuditID: cbfec7f2-54fff70000001175-d7-5d83831b7d01
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 60.2E.04117.A13838D5; Thu, 19
 Sep 2019 14:31:06 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190919133106eusmtip2c973d9971334728740a684d22fd689bf~F2h2we2vz2776727767eusmtip2i;
 Thu, 19 Sep 2019 13:31:06 +0000 (GMT)
Subject: Re: [alsa-devel] [PATCH v1 8/9] ASoC: samsung: arndale: Add missing
 OF node dereferencing
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <389f0e11-dd00-b373-faef-ed689037340c@samsung.com>
Date: Thu, 19 Sep 2019 15:31:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAJKOXPfwAx7vWSWS0M1JuGJvn6tKTp9yaT2qEOwmAWTUdvoptQ@mail.gmail.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTcRT2d7e7ezUn16l5UikZKa1IXSRcSKRA4kb/aP8kxqypN5XmlM1H
 PiBzKrrSLInpUDYp8lGhTrNMUpumqaFp6yHmI1II0wznrAg13VXyv+875/vOOR8ckiey4F5k
 ojKVVSnlCrHAid/W92f4qLdGIwuaXJbQllEzRjdXNOL03S+zAtpSYEK0oXcYp0dGmgh61VKE
 0aavH3C6YqQTox/3ThK0dakLpwte9BL0aN0KdlLINFnzBEy7fpJgTA3FAqbl/jVGV7WBmNLW
 BsRYTfvDiSinkDhWkZjOqgJDLzkljBmmUEoucXW6rwbLRQO4FjmSQB2HrsFBnhY5kSKqDoHu
 /TrOkRUEtvF6xBErgocvPwt2LOWF5RjXqEXQPjewTRYRGLrH7YPdqDjQLtbaHe6UBD6u/bLP
 5VF9PNDWdKOthoCSQsmrUjsWUqHwevmW3cCn/MBm/I1tYQ8qEpZnenBO4woDlbP8LexIRcCE
 bt6u51GekLdSj3P4ADxdrLInAspGwL3i7u2oYTCzcR3jsBvM97cSHPaBjXYDxhk0CG52TBAc
 KUMw3W9EnOoE9PSPbk4iN1dIoPF5IFc+Bc35lcRWGSgX+LToyh3hAnfadDyuLISiQhGnPgh/
 G3TbJ3jBjdkNfhkS63dF0++Ko98VR/9/rxHxG5Anm6ZOimfVUiWbEaCWJ6nTlPEBsclJJrT5
 a0Pr/cvPkG0sxowoEomdhb4ZGpkIl6erM5PMCEie2F1YFZwnEwnj5JlZrCr5oipNwarNyJvk
 iz2F2Q4zF0RUvDyVvcKyKaxqp4uRjl656IEm+p3v95rwKZky9k2ENt9HmVWdyuzzCAmUplq9
 zvlOta2FxZCKn0Sjz8KC1D9IFPV2NPiY/n5WpypjqDFRtBRbv1rtEc1Eukd4O7fkeJufSH4c
 6jiz1zFvbj77W5XtbK5v9umcPSUdpSHnSx1SOm1u6TF+7sbL4VH+hUduP0oX89UJculhnkot
 /weQg98GZwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrKIsWRmVeSWpSXmKPExsVy+t/xe7pSzc2xBofOGFhcuXiIyWLjjPWs
 FlMfPmGzuNK6idFi/pFzrBbnz29gt/h2pYPJYtPja6wWM87vY7JYe+Quu8Xn9/tZLVr3HmG3
 uLjiC5MDr8eGz01sHjtn3WX32LSqk81j85J6j+lz/jN69G1ZxejxeZNcAHuUnk1RfmlJqkJG
 fnGJrVK0oYWRnqGlhZ6RiaWeobF5rJWRqZK+nU1Kak5mWWqRvl2CXsal+fcYCxrYK+4fW8jU
 wHiStYuRk0NCwERicttkpi5GLg4hgaWMEh9vPWLsYuQASkhJzG9RgqgRlvhzrYsNouY1o8T7
 RX/BmoUFUiS63i5nA7FFBDQlrv/9zgpSxCxwjFli0YVGdoiOW0wSZ37cZgepYhMwlOg92scI
 YvMK2Emc+NQP1s0ioCrxdcEPJhBbVCBC4vCOWVA1ghInZz5hAbE5BQIlbk9/BVbPLKAu8Wfe
 JWYIW1yi6ctKVghbXmL72znMExiFZiFpn4WkZRaSlllIWhYwsqxiFEktLc5Nzy020itOzC0u
 zUvXS87P3cQIjOJtx35u2cHY9S74EKMAB6MSD69CeXOsEGtiWXFl7iFGCQ5mJRHeOaZNsUK8
 KYmVValF+fFFpTmpxYcYTYGem8gsJZqcD0wweSXxhqaG5haWhubG5sZmFkrivB0CB2OEBNIT
 S1KzU1MLUotg+pg4OKUaGLfFTdr1U+BnyYHZSw58f31QYvfqmm3TJt+/IbP/VeZha7GJ7c/m
 /93y/pyqaPg9oUS1f4zy1d423P90HXpNZPKfT5gX/9rsd0FG/SSnqiLFqqN3mdo6JzWevPRB
 5rb4MeGFDLObXm83F93Gomh71aX3we72UFtpZ/UEuZb02nmVrP//flm/QVmJpTgj0VCLuag4
 EQCTUqNR+AIAAA==
X-CMS-MailID: 20190919133107eucas1p1f9502dca0c106fb9e268f2636b6ec774
X-Msg-Generator: CA
X-RootMTR: 20190918104713eucas1p2ccfa8e9dff2cda9e8f88ac42dda2b680
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190918104713eucas1p2ccfa8e9dff2cda9e8f88ac42dda2b680
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104713eucas1p2ccfa8e9dff2cda9e8f88ac42dda2b680@eucas1p2.samsung.com>
 <20190918104634.15216-9-s.nawrocki@samsung.com> <20190919082211.GF13195@pi3>
 <a0072745-f7c1-86ad-2344-d73dd210e1ad@samsung.com>
 <CAJKOXPfwAx7vWSWS0M1JuGJvn6tKTp9yaT2qEOwmAWTUdvoptQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_063111_033475_7E4F3645 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 ckeepax@opensource.cirrus.com,
 =?UTF-8?Q?Bart=c5=82omiej_=c5=bbo=c5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>, sbkim73@samsung.com, patches@opensource.cirrus.com,
 broonie@kernel.org, lgirdwood@gmail.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/19/19 14:58, Krzysztof Kozlowski wrote:
> On Thu, 19 Sep 2019 at 14:49, Sylwester Nawrocki <s.nawrocki@samsung.com> wrote:
>> On 9/19/19 10:22, Krzysztof Kozlowski wrote:
>>> Wasn't this issue introduced in 5/9? It looks weird to fix it here...
>> It has not been introduced by 5/9, the issue was there already before
>> my patch, there was even no remove() callback where OF node references
>> could be dropped.
>
> I see. Then please put it as first patch. You should not mix bugfixes
> with features. If mixing, be sure they can be applied before the
> features.

I will see if it is worth the effort to rebase this patch. I didn't bother
with that because this sound card driver is not used in mainline (there is 
no related dts changes) and the patch is a fix for minor bug which I found
just before posting first version of the patch series.

-- 
Thanks,
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
