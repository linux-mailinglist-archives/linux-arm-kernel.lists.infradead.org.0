Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A216DA127B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 09:20:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VgVLmjEOkoh9cVfBXJ3+mUdc3Uakf3tt16ZY2oEfb5U=; b=uiqgGOkjcAF5fd
	x2PjGMLEUcG6EWZHrUdiZVvS/CSGbYEXsX3FLvwvryHRFfyyLkVC36AJH616twkQFVRCn77hpe+J6
	q96P3hp1I+pSkTt8ECjwyf6LQEa3KWHeJ7w+dzKBWhGvykGjCPImcgZWjJAGDgxkG9wQQGdm0sDF+
	Otzv3YN/I9T0pugdFeFX1zZP8fKcE+dy4GSCF9qQxwnEVkyOwPghBerM7Z7sMxi82Ccum1BgDDvfN
	Vq/rBO383wwdwmniNw0Ns2q7hDN+4TRWPUaDITdD/Hm+piEY+tqA+Wbb77EQMw7EGpJ8jzEdSVtTr
	5Deiq16sRUH9KBUt1EhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3EjL-0005Tp-Kb; Thu, 29 Aug 2019 07:20:27 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Eiv-0004zJ-59; Thu, 29 Aug 2019 07:20:03 +0000
Received: by mail-ed1-x544.google.com with SMTP id t50so2919016edd.2;
 Thu, 29 Aug 2019 00:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=i+sPE/Pat1lrzq2dJgCoiDCoNsT9s5ynQ9L/i7Urq4o=;
 b=GUzb9v1S7cdSEwX+BWsPzbnQrwBk64BVmZPn5bJow7mxxApzpMswNGe4DvNmQI5zvW
 jJibjI3LWaopgFo0O2EyPiP2vvOU8L22wTJlD7TS78BaXaebdJ5XANCfnLQCOpEo59tg
 /r0knWjDQAct1Z2NuUJUEJxFJWoC1qdgcVjY5dh6S+eYqvc7SccO3bwo9REpe5cxTWr6
 VbkOxtocjV72OzGAY9YlV7DGj9UjK3Eu3K5sfqMh0a9aditS6qr/Ds3DwzMV68j/hhgp
 jYBprq4KPNTrWvwFwX2ZnrGNo9Lply1fsm5dTPGrE6fTwTakF3CHBflkS1Scs75I5iu2
 wEhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=i+sPE/Pat1lrzq2dJgCoiDCoNsT9s5ynQ9L/i7Urq4o=;
 b=f04ZE9xBL8hjB0hc2Z238oEPHbV4yj0B9DzY9Ok3LZjudOkWVr5ZeLMefmDgN4tWSu
 L6fdVUdei2PomuMzKQ9rRixme7aehQpiShcANCWG6LLPGWg6CYllBjzx2e/9rjTV95md
 kdrJBLTqSha3PB2a3D4gN2kps3vULvcrEZexKfbXg8MKcJIGbyBpcB8ekEJqSwmCd4hk
 g2aFnbbwSKALovwHSLr/hwSzsFfemXWOLa7QrPCPd1gXJWcwrpbfDygyCt/vaPf5DJRT
 rbSRTyb0RrVHNr+n6xjTROcd1D8vAVxDOzjNXg0u1lZg9BAYIsx246DiSkuM/QJR5n+A
 4uEw==
X-Gm-Message-State: APjAAAVIK174MBM1uS71Ql4bKwi90h/4PmgIBhYz9Aq/5WzdIv1DeStn
 FaV5fZX2yzuWYwjssoWJKzvPf4ahIqI=
X-Google-Smtp-Source: APXvYqxw/MyNHmr43QCyGNxdClXWYo9Ba9VdQoXKY2pZOtuoAVqdYjlhJtuHi+ifEdHq1+YTM8WORw==
X-Received: by 2002:a17:906:1d51:: with SMTP id
 o17mr6602225ejh.186.1567063198920; 
 Thu, 29 Aug 2019 00:19:58 -0700 (PDT)
Received: from ziggy.stardust ([37.223.137.147])
 by smtp.gmail.com with ESMTPSA id bo1sm251879ejb.56.2019.08.29.00.19.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 29 Aug 2019 00:19:58 -0700 (PDT)
Subject: Re: [PATCH v6 14/14] arm64: dts: Add power controller device node of
 MT8183
To: CK Hu <ck.hu@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>
References: <1560998286-9189-1-git-send-email-weiyi.lu@mediatek.com>
 <1560998286-9189-15-git-send-email-weiyi.lu@mediatek.com>
 <1561971461.12937.8.camel@mtksdaap41>
From: Matthias Brugger <matthias.bgg@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 mQINBFP1zgUBEAC21D6hk7//0kOmsUrE3eZ55kjc9DmFPKIz6l4NggqwQjBNRHIMh04BbCMY
 fL3eT7ZsYV5nur7zctmJ+vbszoOASXUpfq8M+S5hU2w7sBaVk5rpH9yW8CUWz2+ZpQXPJcFa
 OhLZuSKB1F5JcvLbETRjNzNU7B3TdS2+zkgQQdEyt7Ij2HXGLJ2w+yG2GuR9/iyCJRf10Okq
 gTh//XESJZ8S6KlOWbLXRE+yfkKDXQx2Jr1XuVvM3zPqH5FMg8reRVFsQ+vI0b+OlyekT/Xe
 0Hwvqkev95GG6x7yseJwI+2ydDH6M5O7fPKFW5mzAdDE2g/K9B4e2tYK6/rA7Fq4cqiAw1+u
 EgO44+eFgv082xtBez5WNkGn18vtw0LW3ESmKh19u6kEGoi0WZwslCNaGFrS4M7OH+aOJeqK
 fx5dIv2CEbxc6xnHY7dwkcHikTA4QdbdFeUSuj4YhIZ+0QlDVtS1QEXyvZbZky7ur9rHkZvP
 ZqlUsLJ2nOqsmahMTIQ8Mgx9SLEShWqD4kOF4zNfPJsgEMB49KbS2o9jxbGB+JKupjNddfxZ
 HlH1KF8QwCMZEYaTNogrVazuEJzx6JdRpR3sFda/0x5qjTadwIW6Cl9tkqe2h391dOGX1eOA
 1ntn9O/39KqSrWNGvm+1raHK+Ev1yPtn0Wxn+0oy1tl67TxUjQARAQABtClNYXR0aGlhcyBC
 cnVnZ2VyIDxtYXR0aGlhcy5iZ2dAZ21haWwuY29tPokCUgQTAQIAPAIbAwYLCQgHAwIGFQgC
 CQoLBBYCAwECHgECF4AWIQTmuZIYwPLDJRwsOhfZFAuyVhMC8QUCWt3scQIZAQAKCRDZFAuy
 VhMC8WzRD/4onkC+gCxG+dvui5SXCJ7bGLCu0xVtiGC673Kz5Aq3heITsERHBV0BqqctOEBy
 ZozQQe2Hindu9lasOmwfH8+vfTK+2teCgWesoE3g3XKbrOCB4RSrQmXGC3JYx6rcvMlLV/Ch
 YMRR3qv04BOchnjkGtvm9aZWH52/6XfChyh7XYndTe5F2bqeTjt+kF/ql+xMc4E6pniqIfkv
 c0wsH4CkBHqoZl9w5e/b9MspTqsU9NszTEOFhy7p2CYw6JEa/vmzR6YDzGs8AihieIXDOfpT
 DUr0YUlDrwDSrlm/2MjNIPTmSGHH94ScOqu/XmGW/0q1iar/Yr0leomUOeeEzCqQtunqShtE
 4Mn2uEixFL+9jiVtMjujr6mphznwpEqObPCZ3IcWqOFEz77rSL+oqFiEA03A2WBDlMm++Sve
 9jpkJBLosJRhAYmQ6ey6MFO6Krylw1LXcq5z1XQQavtFRgZoruHZ3XlhT5wcfLJtAqrtfCe0
 aQ0kJW+4zj9/So0uxJDAtGuOpDYnmK26dgFN0tAhVuNInEVhtErtLJHeJzFKJzNyQ4GlCaLw
 jKcwWcqDJcrx9R7LsCu4l2XpKiyxY6fO4O8DnSleVll9NPfAZFZvf8AIy3EQ8BokUsiuUYHz
 wUo6pclk55PZRaAsHDX/fNr24uC6Eh5oNQ+v4Pax/gtyybkCDQRT9c4FARAAqdGWpdzcSM8q
 6I2oTPS5J4KXXIJS8O2jbUcxoNuaSBnUkhwp2eML/i30oLbEC+akmagcOLD0kOY46yRFeSEC
 SPM9SWLxKvKUTQYGLX2sphPVZ3hEdFYKen3+cbvo6GyYTnm8ropHM9uqmXPZFFfLJDL76Nau
 kFsRfPMQUuwMe3hFVLmF7ntvdX3Z3jKImoMWrgA/SnsT6K40n/GCl1HNz2T8PSnqAUQjvSoI
 FAenxb23NtW6kg50xIxlb7DKbncnQGGTwoYn8u9Lgxkh8gJ03IMiSDHZ9o+wl21U8B3OXr1K
 L08vXmdR70d6MJSmt6pKs7yTjxraF0ZS6gz+F2BTy080jxceZwEWIIbK7zU3tm1hnr7QIbj/
 H6W2Pv9p5CXzQCIw17FXFXjpGPa9knzd4WMzJv2Rgx/m8/ZG91aKq+4Cbz9TLQ7OyRdXqhPJ
 CopfKgZ2l/Fc5+AGhogJLxOopBoELIdHgB50Durx4YJLmQ1z/oimD0O/mUb5fJu0FUQ5Boc1
 kHHJ8J8bZTuFrGAomfvnsek+dyenegqBpZCDniCSfdgeAx9oWNoXG4cgo8OVG7J/1YIWBHRa
 Wnk+WyXGBfbY/8247Gy8oaXtQs1OnehbMKBHRIY0tgoyUlag3wXuUzeK+0PKtWC7ZYelKNC0
 Fn+zL9XpnK3HLE5ckhBLgK8AEQEAAYkCHwQYAQIACQUCU/XOBQIbDAAKCRDZFAuyVhMC8Yyu
 D/9g6+JZZ+oEy7HoGZ0Bawnlxu/xQrzaK/ltQhA2vtiMaxCN46gOvEF/x+IvFscAucm3q4Dy
 bJJkW2qY30ISK9MDELnudPmHRqCxTj8koabvcI1cP8Z0Fw1reMNZVgWgVZJkwHuPYnkhY15u
 3vHDzcWnfnvmguKgYoJxkqqdp/acb0x/qpQgufrWGeYv2yb1YNidXBHTJSuelFcGp/oBXeJz
 rQ2IP1JBbQmQfPSePZzWdSLlrR+3jcBJEP/A/73lSObOQpiYJomXPcla6dH+iyV0IiiZdYgU
 Htwru4Stv/cFVFsUJk1fIOP1qjSa+L6Y0dWX6JMniqUXHhaXo6OPf7ArpVbBygMuzvy99LtS
 FSkMcYXn359sXOYsRy4V+Yr7Bs0lzdnHnKdpVqHiDvNgrrLoPNrKTiYwTmzTVbb9u/BjUGhC
 YUS705vcjBgXhdXS44kgO22kaB5c6Obg7WP7cucFomITovtZs5Rm1iaZZc31lzobfFPUwDSc
 YXOj6ckS9bF9lDG26z3C/muyiifZeiQvvG1ygexrHtnKYTNxqisOGjjcXzDzpS8egIOtIEI/
 arzlqK5RprMLVOl6n/npxEWmInjBetsBsaX/9kJNZFM4Yais5scOnP+tuTnFTW2K9xKySyuD
 q/iLORJYRYMloJPaDAftiYfjFa8zuw1XnQyG17kCDQRT9gX3ARAAsL2UwyvSLQuMxOW2GRLv
 CiZuxtIEoUuhaBWdC/Yq3c6rWpTu692lhLd4bRpKJkE4nE3saaTVxIHFF3tt3IHSa3Qf831S
 lW39EkcFxr7DbO17kRThOyU1k7KDhUQqhRaUoT1NznrykvpTlNszhYNjA0CMYWH249MJXgck
 iKOezSHbQ2bZWtFG3uTloWSKloFsjsmRsb7Vn2FlyeP+00PVC6j7CRqczxpkyYoHuqIS0w1z
 Aq8HP5DDSH7+arijtPuJhVv9uaiD6YFLgSIQy4ZCZuMcdzKJz2j6KCw2kUXLehk4BU326O0G
 r9+AojZT8J3qvZYBpvCmIhGliKhZ7pYDKZWVseRw7rJS5UFnst5OBukBIjOaSVdp6JMpe99o
 caLjyow2By6DCEYgLCrquzuUxMQ8plEMfPD1yXBo00bLPatkuxIibM0G4IstKL5hSAKiaFCc
 2f73ppp7eby3ZceyF4uCIxN3ABjW9ZCEAcEwC40S3rnh2wZhscBFZ+7sO7+Fgsd0w67zjpt+
 YHFNv/chRJiPnDGGRt0jPWryaasDnQtAAf59LY3qd4GVHu8RA1G0Rz4hVw27yssHGycc4+/Z
 ZX7sPpgNKlpsToMaB5NWgc389HdqOG80Ia+sGkNj9ylp74MPbd0t3fzQnKXzBSHOCNuS67sc
 lUAw7HB+wa3BqgsAEQEAAYkEPgQYAQIACQUCU/YF9wIbAgIpCRDZFAuyVhMC8cFdIAQZAQIA
 BgUCU/YF9wAKCRC0OWJbLPHTQ14xD/9crEKZOwhIWX32UXvB/nWbhEx6+PQG2uWsnah7oc5D
 7V+aY7M1jy5af8yhlhVdaxL5xUoepfOP08lkCEuSdrYbS5wBcQj4NE1QUoeAjJKbq4JwxUkX
 Baq2Lu91UZpdKxEVFfSkEzmeMaVvClGjGOtNCUKl8lwLuthU7dGTW74mJaW5jjlXldgzfzFd
 BkS3fsXfcmeDhHh5TpA4e3MYVBIJrq6Repv151g/zxdA02gjJgGvJlXTb6OgEZGNFr8LGJDh
 LP7MSksBw6IxCAJSicMESu5kXsJfcODlm4zFaV8QDBevI/s/TgOQ9KQ/EJQsG+XBAuh0dqpu
 ImmCdhlHx+YaGmwKO1/yhfWvg1h1xbVn98izeotmq1+0J1jt9tgM17MGvgHjmvqlaY+oUXfj
 OkHkcCGOvao5uAsddQhZcSLmLhrSot8WJI0z3NIM30yiNx/r6OMu47lzTobdYCU8/8m7Rhsq
 fyW68D+XR098NIlU2oYy1zUetw59WJLf2j5u6D6a9p10doY5lYUEeTjy9Ejs/cL+tQbGwgWh
 WwKVal1lAtZVaru0GMbSQQ2BycZsZ+H+sbVwpDNEOxQaQPMmEzwgv2Sk2hvR3dTnhUoUaVoR
 hQE3/+fVRbWHEEroh/+vXV6n4Ps5bDd+75NCQ/lfPZNzGxgxqbd/rd2wStVZpQXkhofMD/4k
 Z8IivHZYaTA+udUk3iRm0l0qnuX2M5eUbyHW0sZVPnL7Oa4OKXoOir1EWwzzq0GNZjHCh6Cz
 vLOb1+pllnMkBky0G/+txtgvj5T/366ErUF+lQfgNtENKY6In8tw06hPJbu1sUTQIs50Jg9h
 RNkDSIQ544ack0fzOusSPM+vo6OkvIHt8tV0fTO1muclwCX/5jb7zQIDgGiUIgS8y0M4hIkP
 KvdmgurPywi74nEoQQrKF6LpPYYHsDteWR/k2m2BOj0ciZDIIxVR09Y9moQIjBLJKN0J21XJ
 eAgam4uLV2p1kRDdw/ST5uMCqD4Qi5zrZyWilCci6jF1TR2VEt906E2+AZ3BEheRyn8yb2KO
 +cJD3kB4RzOyBC/Cq/CGAujfDkRiy1ypFF3TkZdya0NnMgka9LXwBV29sAw9vvrxHxGa+tO+
 RpgKRywr4Al7QGiw7tRPbxkcatkxg67OcRyntfT0lbKlSTEQUxM06qvwFN7nobc9YiJJTeLu
 gfa4fCqhQCyquWVVoVP+MnLqkzu1F6lSB6dGIpiW0s3LwyE/WbCAVBraPoENlt69jI0WTXvH
 4v71zEffYaGWqtrSize20x9xZf5c/Aukpx0UmsqheKeoSprKyRD/Wj/LgsuTE2Uod85U36Xk
 eFYetwQY1h3lok2Zb/3uFhWr0NqmT14EL7kCDQRT9gkSARAApxtQ4zUMC512kZ+gCiySFcIF
 /mAf7+l45689Tn7LI1xmPQrAYJDoqQVXcyh3utgtvBvDLmpQ+1BfEONDWc8KRP6Abo35YqBx
 3udAkLZgr/RmEg3+Tiof+e1PJ2zRh5zmdei5MT8biE2zVd9DYSJHZ8ltEWIALC9lAsv9oa+2
 L6naC+KFF3i0m5mxklgFoSthswUnonqvclsjYaiVPoSldDrreCPzmRCUd8znf//Z4BxtlTw3
 SulF8weKLJ+Hlpw8lwb3sUl6yPS6pL6UV45gyWMe677bVUtxLYOu+kiv2B/+nrNRDs7B35y/
 J4t8dtK0S3M/7xtinPiYRmsnJdk+sdAe8TgGkEaooF57k1aczcJlUTBQvlYAEg2NJnqaKg3S
 CJ4fEuT8rLjzuZmLkoHNumhH/mEbyKca82HvANu5C9clyQusJdU+MNRQLRmOAd/wxGLJ0xmA
 ye7Ozja86AIzbEmuNhNH9xNjwbwSJNZefV2SoZUv0+V9EfEVxTzraBNUZifqv6hernMQXGxs
 +lBjnyl624U8nnQWnA8PwJ2hI3DeQou1HypLFPeY9DfWv4xYdkyeOtGpueeBlqhtMoZ0kDw2
 C3vzj77nWwBgpgn1Vpf4hG/sW/CRR6tuIQWWTvUM3ACa1pgEsBvIEBiVvPxyAtL+L+Lh1Sni
 7w3HBk1EJvUAEQEAAYkCHwQYAQIACQUCU/YJEgIbDAAKCRDZFAuyVhMC8QndEACuN16mvivn
 WwLDdypvco5PF8w9yrfZDKW4ggf9TFVB9skzMNCuQc+tc+QM+ni2c4kKIdz2jmcg6QytgqVu
 m6V1OsNmpjADaQkVp5jL0tmg6/KA9Tvr07Kuv+Uo4tSrS/4djDjJnXHEp/tB+Fw7CArNtUtL
 lc8SuADCmMD+kBOVWktZyzkBkDfBXlTWl46T/8291lEspDWe5YW1ZAH/HdCR1rQNZWjNCpB2
 Cic58CYMD1rSonCnbfUeyZYNNhNHZosl4dl7f+am87Q2x3pK0DLSoJRxWb7vZB0uo9CzCSm3
 I++aYozF25xQoT+7zCx2cQi33jwvnJAK1o4VlNx36RfrxzBqc1uZGzJBCQu48UjmUSsTwWC3
 HpE/D9sM+xACs803lFUIZC5H62G059cCPAXKgsFpNMKmBAWweBkVJAisoQeX50OP+/11ArV0
 cv+fOTfJj0/KwFXJaaYh3LUQNILLBNxkSrhCLl8dUg53IbHx4NfIAgqxLWGfXM8DY1aFdU79
 pac005PuhxCWkKTJz3gCmznnoat4GCnL5gy/m0Qk45l4PFqwWXVLo9AQg2Kp3mlIFZ6fsEKI
 AN5hxlbNvNb9V2Zo5bFZjPWPFTxOteM0omUAS+QopwU0yPLLGJVf2iCmItHcUXI+r2JwH1CJ
 jrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <dbe45059-f265-fc6e-8ec5-b2166d503186@gmail.com>
Date: Thu, 29 Aug 2019 09:19:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1561971461.12937.8.camel@mtksdaap41>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_002001_229228_501D11A9 
X-CRM114-Status: GOOD (  19.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream@mediatek.com, James Liao <jamesjj.liao@mediatek.com>,
 linux-kernel@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Yong Wu <yong.wu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 01/07/2019 10:57, CK Hu wrote:
> Hi, Weiyi:
> 
> On Thu, 2019-06-20 at 10:38 +0800, Weiyi Lu wrote:
>> Add power controller node and smi-common node for MT8183
>> In scpsys node, it contains clocks and regmapping of
>> infracfg and smi-common for bus protection.
>>
>> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
>> ---
>>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 62 ++++++++++++++++++++++++++++++++
>>  1 file changed, 62 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
>> index 08274bf..75c4881 100644
>> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
>> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
>> @@ -8,6 +8,7 @@
>>  #include <dt-bindings/clock/mt8183-clk.h>
>>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>>  #include <dt-bindings/interrupt-controller/irq.h>
>> +#include <dt-bindings/power/mt8183-power.h>
>>  
>>  / {
>>  	compatible = "mediatek,mt8183";
>> @@ -196,6 +197,62 @@
>>  			#clock-cells = <1>;
>>  		};
>>  
>> +		scpsys: syscon@10006000 {
>> +			compatible = "mediatek,mt8183-scpsys", "syscon";
>> +			#power-domain-cells = <1>;
>> +			reg = <0 0x10006000 0 0x1000>;
>> +			clocks = <&topckgen CLK_TOP_MUX_AUD_INTBUS>,
>> +				 <&infracfg CLK_INFRA_AUDIO>,
>> +				 <&infracfg CLK_INFRA_AUDIO_26M_BCLK>,
>> +				 <&topckgen CLK_TOP_MUX_MFG>,
>> +				 <&topckgen CLK_TOP_MUX_MM>,
>> +				 <&topckgen CLK_TOP_MUX_CAM>,
>> +				 <&topckgen CLK_TOP_MUX_IMG>,
>> +				 <&topckgen CLK_TOP_MUX_IPU_IF>,
>> +				 <&topckgen CLK_TOP_MUX_DSP>,
>> +				 <&topckgen CLK_TOP_MUX_DSP1>,
>> +				 <&topckgen CLK_TOP_MUX_DSP2>,
>> +				 <&mmsys CLK_MM_SMI_COMMON>,
>> +				 <&mmsys CLK_MM_SMI_LARB0>,
>> +				 <&mmsys CLK_MM_SMI_LARB1>,
>> +				 <&mmsys CLK_MM_GALS_COMM0>,
>> +				 <&mmsys CLK_MM_GALS_COMM1>,
>> +				 <&mmsys CLK_MM_GALS_CCU2MM>,
>> +				 <&mmsys CLK_MM_GALS_IPU12MM>,
>> +				 <&mmsys CLK_MM_GALS_IMG2MM>,
>> +				 <&mmsys CLK_MM_GALS_CAM2MM>,
>> +				 <&mmsys CLK_MM_GALS_IPU2MM>,
> 
> Up to now, MT8183 mmsys has the same resource with another device node:
> 
> 		mmsys: syscon@14000000 {
> 			compatible = "mediatek,mt8183-mmsys", "syscon";
> 			reg = <0 0x14000000 0 0x1000>;
> 			#clock-cells = <1>;
> 		};
> 
> 		display_components: dispsys@14000000 {
> 			compatible = "mediatek,mt8183-display";
> 			reg = <0 0x14000000 0 0x1000>;
> 			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
> 		};
> 
> I think this two node should be merge into one node, so I've try to
> merge them:
> 
> 		mmsys: syscon@14000000 {
> 			compatible = "mediatek,mt8183-mmsys", "syscon";
> 			reg = <0 0x14000000 0 0x1000>;
> 			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
> 			#clock-cells = <1>;
> 		};
> 
> But I got a kernel panic when boot,
> 
> [    3.458523] Unable to handle kernel paging request at virtual address
> fffffffffffffdfb
> [    3.466999] Mem abort info:
> [    3.470116]   ESR = 0x96000005
> [    3.473268]   Exception class = DABT (current EL), IL = 32 bits
> [    3.479375]   SET = 0, FnV = 0
> [    3.482530]   EA = 0, S1PTW = 0
> [    3.485785] Data abort info:
> [    3.488831]   ISV = 0, ISS = 0x00000005
> [    3.493067]   CM = 0, WnR = 0
> [    3.496229] swapper pgtable: 4k pages, 39-bit VAs, pgdp =
> 000000004f8fa26d
> [    3.503214] [fffffffffffffdfb] pgd=0000000000000000,
> pud=0000000000000000
> [    3.510408] Internal error: Oops: 96000005 [#1] PREEMPT SMP
> [    3.515974] Modules linked in:
> [    3.519023] Process kworker/0:3 (pid: 106, stack limit =
> 0x00000000281d0651)
> [    3.526066] CPU: 0 PID: 106 Comm: kworker/0:3 Tainted: G        W
> 4.19.43 #208
> [    3.533974] Hardware name: MediaTek kukui rev1 board (DT)
> [    3.539374] Workqueue: events deferred_probe_work_func
> [    3.544507] pstate: 20000005 (nzCv daif -PAN -UAO)
> [    3.549294] pc : clk_prepare+0x18/0x40
> [    3.553038] lr : scpsys_clk_enable+0x40/0xb4
> [    3.557299] sp : ffffff800855b9e0
> [    3.560606] x29: ffffff800855b9f0 x28: ffffff93e1e5f594
> [    3.565911] x27: 000000000000000f x26: ffffff93e1e5e9b8
> [    3.571217] x25: 000000003b9aca00 x24: ffffff800858530c
> [    3.576522] x23: ffffffffffffffff x22: fffffffffffffdfb
> [    3.581827] x21: 000000000000000a x20: ffffffccb89aafc8
> [    3.587132] x19: fffffffffffffdfb x18: 00005a5c77082016
> [    3.592438] x17: 0000000000000400 x16: 0000000000000001
> [    3.597743] x15: 0000000000000009 x14: ffffff93e271c908
> [    3.603048] x13: 0000000000000b22 x12: 0000000000000008
> [    3.608353] x11: 0000000001d063de x10: 0000000000000008
> [    3.613659] x9 : 00000000ffffffed x8 : 0000000000000000
> [    3.618964] x7 : 736d6c2dff7224fe x6 : 0000008000000000
> [    3.624269] x5 : 0000000000000000 x4 : 0000000080000000
> [    3.629575] x3 : 002f6d6e74000000 x2 : 0000000000000000
> [    3.634880] x1 : 000000000000000a x0 : fffffffffffffdfb
> [    3.640185] Call trace:
> [    3.642625]  clk_prepare+0x18/0x40
> [    3.646019]  scpsys_clk_enable+0x40/0xb4
> [    3.649935]  scpsys_power_on+0x13c/0x304
> [    3.653850]  scpsys_probe+0xe0/0x5fc
> [    3.657419]  platform_drv_probe+0x80/0xb0
> [    3.661420]  really_probe+0x114/0x28c
> [    3.665075]  driver_probe_device+0x64/0xfc
> [    3.669164]  __device_attach_driver+0xb8/0xd0
> [    3.673513]  bus_for_each_drv+0x88/0xd0
> [    3.677341]  __device_attach+0xac/0x130
> [    3.681169]  device_initial_probe+0x20/0x2c
> [    3.685344]  bus_probe_device+0x34/0x90
> [    3.689172]  deferred_probe_work_func+0x74/0xac
> [    3.693698]  process_one_work+0x210/0x420
> [    3.697700]  worker_thread+0x278/0x3e4
> [    3.701443]  kthread+0x11c/0x12c
> [    3.704665]  ret_from_fork+0x10/0x18
> 
> I'm not really understand what happen, but scpsys and mmsys point to
> each other in MT8183. Why these two node point to each other in MT8183?
> If this is really hardware limitation, we need to solve this in driver.
> If this is not a hardware limitation, I would like to re-organize device
> tree to prevent this problem.
> 

How do you register the clocks?
We would need to have a solution as proposed in:
https://patchwork.kernel.org/cover/10686345/

CK Hu, as far as I remember you wanted to look into it. If you don't have time,
I can give it a try next week. Right now I have a bit of free time to work on that.

Regards,
Matthias

> Regards,
> CK
> 
> 
>> +				 <&imgsys CLK_IMG_LARB5>,
>> +				 <&imgsys CLK_IMG_LARB2>,
>> +				 <&camsys CLK_CAM_LARB6>,
>> +				 <&camsys CLK_CAM_LARB3>,
>> +				 <&camsys CLK_CAM_SENINF>,
>> +				 <&camsys CLK_CAM_CAMSV0>,
>> +				 <&camsys CLK_CAM_CAMSV1>,
>> +				 <&camsys CLK_CAM_CAMSV2>,
>> +				 <&camsys CLK_CAM_CCU>,
>> +				 <&ipu_conn CLK_IPU_CONN_IPU>,
>> +				 <&ipu_conn CLK_IPU_CONN_AHB>,
>> +				 <&ipu_conn CLK_IPU_CONN_AXI>,
>> +				 <&ipu_conn CLK_IPU_CONN_ISP>,
>> +				 <&ipu_conn CLK_IPU_CONN_CAM_ADL>,
>> +				 <&ipu_conn CLK_IPU_CONN_IMG_ADL>;
>> +			clock-names = "audio", "audio1", "audio2",
>> +				      "mfg", "mm", "cam",
>> +				      "isp", "vpu", "vpu1",
>> +				      "vpu2", "vpu3", "mm-0",
>> +				      "mm-1", "mm-2", "mm-3",
>> +				      "mm-4", "mm-5", "mm-6",
>> +				      "mm-7", "mm-8", "mm-9",
>> +				      "isp-0", "isp-1", "cam-0",
>> +				      "cam-1", "cam-2", "cam-3",
>> +				      "cam-4", "cam-5", "cam-6",
>> +				      "vpu-0", "vpu-1", "vpu-2",
>> +				      "vpu-3", "vpu-4", "vpu-5";
>> +			infracfg = <&infracfg>;
>> +			smi_comm = <&smi_common>;
>> +		};
>> +
>>  		apmixedsys: syscon@1000c000 {
>>  			compatible = "mediatek,mt8183-apmixedsys", "syscon";
>>  			reg = <0 0x1000c000 0 0x1000>;
>> @@ -260,6 +317,11 @@
>>  			#clock-cells = <1>;
>>  		};
>>  
>> +		smi_common: smi@14019000 {
>> +			compatible = "mediatek,mt8183-smi-common", "syscon";
>> +			reg = <0 0x14019000 0 0x1000>;
>> +		};
>> +
>>  		imgsys: syscon@15020000 {
>>  			compatible = "mediatek,mt8183-imgsys", "syscon";
>>  			reg = <0 0x15020000 0 0x1000>;
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
