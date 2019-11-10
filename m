Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FD9F6AC8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 Nov 2019 19:32:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0RvYX64rDd8c4GfCh8Zd0GrEp9AXdRDdorIFlh9VndQ=; b=hI0iBi9dtxHu6e
	ttIwtFv5FIu/Du73mSZpEuJFCC5kI1bydfwq2r3ODaTcKhOLwfZDzvOKpBrSD9ARwZIWLXzuygLgH
	hFySqWvioPd8/hnFXX7w/fU0FuIADT/zTsg20UBP2xv4x1DmztKg6HMQosB9iXsfbLdHBQRMi/whr
	5i9WgspVvwJd+G+cLjYJ9/fDW/bR73DXO99D0pH84HQwQeTGpjretyVMoMuC3x9heIOGfXZJWsHAi
	1ubxwIirTMvJwhxe80/0+RWjtuOUza6AxYggYsxTTz8ra5gigPsNnRR5LF/+JJy/nneygktWWYKjc
	aDC2LhWvxdO4AIc7lKcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTs0K-000601-P4; Sun, 10 Nov 2019 18:32:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTs09-0005ya-Q2; Sun, 10 Nov 2019 18:31:55 +0000
Received: by mail-wr1-x441.google.com with SMTP id w9so5455742wrr.0;
 Sun, 10 Nov 2019 10:31:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=219Psk+NMwviPy5jzF7BTHjk8aNJx0YEeA+z73oVWI0=;
 b=Sb7RRn851g0MQSH4r9iCtwNet76gP8rw+UU0ZbHAFgSqSmnwtD8PhZL6+4fBgxZhIv
 856F98g7CDzEC1HSMu3DtzXxYr+rBKLz2FALzvnq4M9RoOJ3XgW4VEqwBo9KreWjlZAV
 rJw4lXX8pC/4eEEn7AOV8tEvnqmt8oRwb/FdSHjGvvnmlAlwSpUZ17KG1A1Idl48vFcH
 h32f1OWQ1aqKNNNr1HM/n3YFJGLRFdm3oNccdcOfw6C4897pjsfJpvWKdX8l06dtz17B
 TGpQTuR0wxtn750DOWZYeYdZg5lBkBYsn23oI+SVsOWuR/vIQ2U6HD7w7SW9IwPWDvxW
 cxIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=219Psk+NMwviPy5jzF7BTHjk8aNJx0YEeA+z73oVWI0=;
 b=Yw9U38v8hDSOlZWxoeOg/cwsN5JI9Q35B/ififzHKXZOADlxURai22zGmYqvFQiNH5
 islxJNDy1h1piU/8pEz90mqu+JTNlpVG7fSKjOmR0PFZ/OFrlBmrDq1eyBjrzk/xB3fp
 wTkuQwtXO3ajgOl8vps45TYlhIN+S2k5C1+YyEwpw/wrft9synSWNJdLypAH0WS+KVGG
 lC+SA1SgjRcABNg3kPiysQfzZCqq0JWeIshe/vsfNQ/916QBeJdqWnV9BCvBn+qRqrd7
 uir4NULklobDRY3jUh69FH+CbQSIRWUpIILt/jgc3ASBRHkeOif0enz6R709lX7YUmGr
 a5zQ==
X-Gm-Message-State: APjAAAXOOGX2ird9pvRjZSMac6LdKQExHDNB30P3FrT6JRISwXU/SstJ
 seQAtnXxAEZXRpVgNMsfhtFsrvwB5xQ=
X-Google-Smtp-Source: APXvYqwanGzcCWhs+dMTtMw/pi6L+S9uOblOnL83zhuvuynoKW/lF6e3nV4V2adyarIHB4Er3O6RjQ==
X-Received: by 2002:adf:f650:: with SMTP id x16mr3570483wrp.223.1573410711080; 
 Sun, 10 Nov 2019 10:31:51 -0800 (PST)
Received: from ziggy.stardust ([95.169.226.39])
 by smtp.gmail.com with ESMTPSA id q124sm11860372wme.13.2019.11.10.10.31.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 10 Nov 2019 10:31:50 -0800 (PST)
Subject: Re: [PATCH v3 17/29] crypto: mediatek - switch to skcipher API
To: Ard Biesheuvel <ardb@kernel.org>, linux-crypto@vger.kernel.org
References: <20191105132826.1838-1-ardb@kernel.org>
 <20191105132826.1838-18-ardb@kernel.org>
From: Matthias Brugger <matthias.bgg@gmail.com>
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
 wUo6pclk55PZRaAsHDX/fNr24uC6Eh5oNQ+v4Pax/gtyybkCDQRT9gX3ARAAsL2UwyvSLQuM
 xOW2GRLvCiZuxtIEoUuhaBWdC/Yq3c6rWpTu692lhLd4bRpKJkE4nE3saaTVxIHFF3tt3IHS
 a3Qf831SlW39EkcFxr7DbO17kRThOyU1k7KDhUQqhRaUoT1NznrykvpTlNszhYNjA0CMYWH2
 49MJXgckiKOezSHbQ2bZWtFG3uTloWSKloFsjsmRsb7Vn2FlyeP+00PVC6j7CRqczxpkyYoH
 uqIS0w1zAq8HP5DDSH7+arijtPuJhVv9uaiD6YFLgSIQy4ZCZuMcdzKJz2j6KCw2kUXLehk4
 BU326O0Gr9+AojZT8J3qvZYBpvCmIhGliKhZ7pYDKZWVseRw7rJS5UFnst5OBukBIjOaSVdp
 6JMpe99ocaLjyow2By6DCEYgLCrquzuUxMQ8plEMfPD1yXBo00bLPatkuxIibM0G4IstKL5h
 SAKiaFCc2f73ppp7eby3ZceyF4uCIxN3ABjW9ZCEAcEwC40S3rnh2wZhscBFZ+7sO7+Fgsd0
 w67zjpt+YHFNv/chRJiPnDGGRt0jPWryaasDnQtAAf59LY3qd4GVHu8RA1G0Rz4hVw27yssH
 Gycc4+/ZZX7sPpgNKlpsToMaB5NWgc389HdqOG80Ia+sGkNj9ylp74MPbd0t3fzQnKXzBSHO
 CNuS67sclUAw7HB+wa3BqgsAEQEAAYkEPgQYAQIACQUCU/YF9wIbAgIpCRDZFAuyVhMC8cFd
 IAQZAQIABgUCU/YF9wAKCRC0OWJbLPHTQ14xD/9crEKZOwhIWX32UXvB/nWbhEx6+PQG2uWs
 nah7oc5D7V+aY7M1jy5af8yhlhVdaxL5xUoepfOP08lkCEuSdrYbS5wBcQj4NE1QUoeAjJKb
 q4JwxUkXBaq2Lu91UZpdKxEVFfSkEzmeMaVvClGjGOtNCUKl8lwLuthU7dGTW74mJaW5jjlX
 ldgzfzFdBkS3fsXfcmeDhHh5TpA4e3MYVBIJrq6Repv151g/zxdA02gjJgGvJlXTb6OgEZGN
 Fr8LGJDhLP7MSksBw6IxCAJSicMESu5kXsJfcODlm4zFaV8QDBevI/s/TgOQ9KQ/EJQsG+XB
 Auh0dqpuImmCdhlHx+YaGmwKO1/yhfWvg1h1xbVn98izeotmq1+0J1jt9tgM17MGvgHjmvql
 aY+oUXfjOkHkcCGOvao5uAsddQhZcSLmLhrSot8WJI0z3NIM30yiNx/r6OMu47lzTobdYCU8
 /8m7RhsqfyW68D+XR098NIlU2oYy1zUetw59WJLf2j5u6D6a9p10doY5lYUEeTjy9Ejs/cL+
 tQbGwgWhWwKVal1lAtZVaru0GMbSQQ2BycZsZ+H+sbVwpDNEOxQaQPMmEzwgv2Sk2hvR3dTn
 hUoUaVoRhQE3/+fVRbWHEEroh/+vXV6n4Ps5bDd+75NCQ/lfPZNzGxgxqbd/rd2wStVZpQXk
 hofMD/4kZ8IivHZYaTA+udUk3iRm0l0qnuX2M5eUbyHW0sZVPnL7Oa4OKXoOir1EWwzzq0GN
 ZjHCh6CzvLOb1+pllnMkBky0G/+txtgvj5T/366ErUF+lQfgNtENKY6In8tw06hPJbu1sUTQ
 Is50Jg9hRNkDSIQ544ack0fzOusSPM+vo6OkvIHt8tV0fTO1muclwCX/5jb7zQIDgGiUIgS8
 y0M4hIkPKvdmgurPywi74nEoQQrKF6LpPYYHsDteWR/k2m2BOj0ciZDIIxVR09Y9moQIjBLJ
 KN0J21XJeAgam4uLV2p1kRDdw/ST5uMCqD4Qi5zrZyWilCci6jF1TR2VEt906E2+AZ3BEheR
 yn8yb2KO+cJD3kB4RzOyBC/Cq/CGAujfDkRiy1ypFF3TkZdya0NnMgka9LXwBV29sAw9vvrx
 HxGa+tO+RpgKRywr4Al7QGiw7tRPbxkcatkxg67OcRyntfT0lbKlSTEQUxM06qvwFN7nobc9
 YiJJTeLugfa4fCqhQCyquWVVoVP+MnLqkzu1F6lSB6dGIpiW0s3LwyE/WbCAVBraPoENlt69
 jI0WTXvH4v71zEffYaGWqtrSize20x9xZf5c/Aukpx0UmsqheKeoSprKyRD/Wj/LgsuTE2Uo
 d85U36XkeFYetwQY1h3lok2Zb/3uFhWr0NqmT14EL7kCDQRT9gkSARAApxtQ4zUMC512kZ+g
 CiySFcIF/mAf7+l45689Tn7LI1xmPQrAYJDoqQVXcyh3utgtvBvDLmpQ+1BfEONDWc8KRP6A
 bo35YqBx3udAkLZgr/RmEg3+Tiof+e1PJ2zRh5zmdei5MT8biE2zVd9DYSJHZ8ltEWIALC9l
 Asv9oa+2L6naC+KFF3i0m5mxklgFoSthswUnonqvclsjYaiVPoSldDrreCPzmRCUd8znf//Z
 4BxtlTw3SulF8weKLJ+Hlpw8lwb3sUl6yPS6pL6UV45gyWMe677bVUtxLYOu+kiv2B/+nrNR
 Ds7B35y/J4t8dtK0S3M/7xtinPiYRmsnJdk+sdAe8TgGkEaooF57k1aczcJlUTBQvlYAEg2N
 JnqaKg3SCJ4fEuT8rLjzuZmLkoHNumhH/mEbyKca82HvANu5C9clyQusJdU+MNRQLRmOAd/w
 xGLJ0xmAye7Ozja86AIzbEmuNhNH9xNjwbwSJNZefV2SoZUv0+V9EfEVxTzraBNUZifqv6he
 rnMQXGxs+lBjnyl624U8nnQWnA8PwJ2hI3DeQou1HypLFPeY9DfWv4xYdkyeOtGpueeBlqht
 MoZ0kDw2C3vzj77nWwBgpgn1Vpf4hG/sW/CRR6tuIQWWTvUM3ACa1pgEsBvIEBiVvPxyAtL+
 L+Lh1Sni7w3HBk1EJvUAEQEAAYkCHwQYAQIACQUCU/YJEgIbDAAKCRDZFAuyVhMC8QndEACu
 N16mvivnWwLDdypvco5PF8w9yrfZDKW4ggf9TFVB9skzMNCuQc+tc+QM+ni2c4kKIdz2jmcg
 6QytgqVum6V1OsNmpjADaQkVp5jL0tmg6/KA9Tvr07Kuv+Uo4tSrS/4djDjJnXHEp/tB+Fw7
 CArNtUtLlc8SuADCmMD+kBOVWktZyzkBkDfBXlTWl46T/8291lEspDWe5YW1ZAH/HdCR1rQN
 ZWjNCpB2Cic58CYMD1rSonCnbfUeyZYNNhNHZosl4dl7f+am87Q2x3pK0DLSoJRxWb7vZB0u
 o9CzCSm3I++aYozF25xQoT+7zCx2cQi33jwvnJAK1o4VlNx36RfrxzBqc1uZGzJBCQu48Ujm
 USsTwWC3HpE/D9sM+xACs803lFUIZC5H62G059cCPAXKgsFpNMKmBAWweBkVJAisoQeX50OP
 +/11ArV0cv+fOTfJj0/KwFXJaaYh3LUQNILLBNxkSrhCLl8dUg53IbHx4NfIAgqxLWGfXM8D
 Y1aFdU79pac005PuhxCWkKTJz3gCmznnoat4GCnL5gy/m0Qk45l4PFqwWXVLo9AQg2Kp3mlI
 FZ6fsEKIAN5hxlbNvNb9V2Zo5bFZjPWPFTxOteM0omUAS+QopwU0yPLLGJVf2iCmItHcUXI+
 r2JwH1CJjrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <fdba315c-a1db-4038-0775-e8016cab4045@gmail.com>
Date: Sun, 10 Nov 2019 19:31:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191105132826.1838-18-ardb@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_103153_879456_6A43296E 
X-CRM114-Status: GOOD (  23.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Eric Biggers <ebiggers@google.com>, linux-mediatek@lists.infradead.org,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-arm-kernel@lists.infradead.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/11/2019 14:28, Ard Biesheuvel wrote:
> Commit 7a7ffe65c8c5 ("crypto: skcipher - Add top-level skcipher interface")
> dated 20 august 2015 introduced the new skcipher API which is supposed to
> replace both blkcipher and ablkcipher. While all consumers of the API have
> been converted long ago, some producers of the ablkcipher remain, forcing
> us to keep the ablkcipher support routines alive, along with the matching
> code to expose [a]blkciphers via the skcipher API.
> 
> So switch this driver to the skcipher API, allowing us to finally drop the
> blkcipher code in the near future.
> 
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Cc: linux-mediatek@lists.infradead.org
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

> ---
>  drivers/crypto/mediatek/mtk-aes.c | 248 +++++++++-----------
>  1 file changed, 116 insertions(+), 132 deletions(-)
> 
> diff --git a/drivers/crypto/mediatek/mtk-aes.c b/drivers/crypto/mediatek/mtk-aes.c
> index d43410259113..90880a81c534 100644
> --- a/drivers/crypto/mediatek/mtk-aes.c
> +++ b/drivers/crypto/mediatek/mtk-aes.c
> @@ -11,6 +11,7 @@
>  
>  #include <crypto/aes.h>
>  #include <crypto/gcm.h>
> +#include <crypto/internal/skcipher.h>
>  #include "mtk-platform.h"
>  
>  #define AES_QUEUE_SIZE		512
> @@ -414,7 +415,7 @@ static int mtk_aes_map(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
>  static void mtk_aes_info_init(struct mtk_cryp *cryp, struct mtk_aes_rec *aes,
>  			      size_t len)
>  {
> -	struct ablkcipher_request *req = ablkcipher_request_cast(aes->areq);
> +	struct skcipher_request *req = skcipher_request_cast(aes->areq);
>  	struct mtk_aes_base_ctx *ctx = aes->ctx;
>  	struct mtk_aes_info *info = &ctx->info;
>  	u32 cnt = 0;
> @@ -450,7 +451,7 @@ static void mtk_aes_info_init(struct mtk_cryp *cryp, struct mtk_aes_rec *aes,
>  		return;
>  	}
>  
> -	mtk_aes_write_state_le(info->state + ctx->keylen, req->info,
> +	mtk_aes_write_state_le(info->state + ctx->keylen, (void *)req->iv,
>  			       AES_BLOCK_SIZE);
>  ctr:
>  	info->tfm[0] += AES_TFM_SIZE(SIZE_IN_WORDS(AES_BLOCK_SIZE));
> @@ -552,13 +553,13 @@ static int mtk_aes_transfer_complete(struct mtk_cryp *cryp,
>  
>  static int mtk_aes_start(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
>  {
> -	struct ablkcipher_request *req = ablkcipher_request_cast(aes->areq);
> -	struct mtk_aes_reqctx *rctx = ablkcipher_request_ctx(req);
> +	struct skcipher_request *req = skcipher_request_cast(aes->areq);
> +	struct mtk_aes_reqctx *rctx = skcipher_request_ctx(req);
>  
>  	mtk_aes_set_mode(aes, rctx);
>  	aes->resume = mtk_aes_transfer_complete;
>  
> -	return mtk_aes_dma(cryp, aes, req->src, req->dst, req->nbytes);
> +	return mtk_aes_dma(cryp, aes, req->src, req->dst, req->cryptlen);
>  }
>  
>  static inline struct mtk_aes_ctr_ctx *
> @@ -571,7 +572,7 @@ static int mtk_aes_ctr_transfer(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
>  {
>  	struct mtk_aes_base_ctx *ctx = aes->ctx;
>  	struct mtk_aes_ctr_ctx *cctx = mtk_aes_ctr_ctx_cast(ctx);
> -	struct ablkcipher_request *req = ablkcipher_request_cast(aes->areq);
> +	struct skcipher_request *req = skcipher_request_cast(aes->areq);
>  	struct scatterlist *src, *dst;
>  	u32 start, end, ctr, blocks;
>  	size_t datalen;
> @@ -579,11 +580,11 @@ static int mtk_aes_ctr_transfer(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
>  
>  	/* Check for transfer completion. */
>  	cctx->offset += aes->total;
> -	if (cctx->offset >= req->nbytes)
> +	if (cctx->offset >= req->cryptlen)
>  		return mtk_aes_transfer_complete(cryp, aes);
>  
>  	/* Compute data length. */
> -	datalen = req->nbytes - cctx->offset;
> +	datalen = req->cryptlen - cctx->offset;
>  	blocks = DIV_ROUND_UP(datalen, AES_BLOCK_SIZE);
>  	ctr = be32_to_cpu(cctx->iv[3]);
>  
> @@ -620,12 +621,12 @@ static int mtk_aes_ctr_transfer(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
>  static int mtk_aes_ctr_start(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
>  {
>  	struct mtk_aes_ctr_ctx *cctx = mtk_aes_ctr_ctx_cast(aes->ctx);
> -	struct ablkcipher_request *req = ablkcipher_request_cast(aes->areq);
> -	struct mtk_aes_reqctx *rctx = ablkcipher_request_ctx(req);
> +	struct skcipher_request *req = skcipher_request_cast(aes->areq);
> +	struct mtk_aes_reqctx *rctx = skcipher_request_ctx(req);
>  
>  	mtk_aes_set_mode(aes, rctx);
>  
> -	memcpy(cctx->iv, req->info, AES_BLOCK_SIZE);
> +	memcpy(cctx->iv, req->iv, AES_BLOCK_SIZE);
>  	cctx->offset = 0;
>  	aes->total = 0;
>  	aes->resume = mtk_aes_ctr_transfer;
> @@ -634,10 +635,10 @@ static int mtk_aes_ctr_start(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
>  }
>  
>  /* Check and set the AES key to transform state buffer */
> -static int mtk_aes_setkey(struct crypto_ablkcipher *tfm,
> +static int mtk_aes_setkey(struct crypto_skcipher *tfm,
>  			  const u8 *key, u32 keylen)
>  {
> -	struct mtk_aes_base_ctx *ctx = crypto_ablkcipher_ctx(tfm);
> +	struct mtk_aes_base_ctx *ctx = crypto_skcipher_ctx(tfm);
>  
>  	switch (keylen) {
>  	case AES_KEYSIZE_128:
> @@ -651,7 +652,7 @@ static int mtk_aes_setkey(struct crypto_ablkcipher *tfm,
>  		break;
>  
>  	default:
> -		crypto_ablkcipher_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
> +		crypto_skcipher_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
>  		return -EINVAL;
>  	}
>  
> @@ -661,10 +662,10 @@ static int mtk_aes_setkey(struct crypto_ablkcipher *tfm,
>  	return 0;
>  }
>  
> -static int mtk_aes_crypt(struct ablkcipher_request *req, u64 mode)
> +static int mtk_aes_crypt(struct skcipher_request *req, u64 mode)
>  {
> -	struct crypto_ablkcipher *ablkcipher = crypto_ablkcipher_reqtfm(req);
> -	struct mtk_aes_base_ctx *ctx = crypto_ablkcipher_ctx(ablkcipher);
> +	struct crypto_skcipher *skcipher = crypto_skcipher_reqtfm(req);
> +	struct mtk_aes_base_ctx *ctx = crypto_skcipher_ctx(skcipher);
>  	struct mtk_aes_reqctx *rctx;
>  	struct mtk_cryp *cryp;
>  
> @@ -672,185 +673,168 @@ static int mtk_aes_crypt(struct ablkcipher_request *req, u64 mode)
>  	if (!cryp)
>  		return -ENODEV;
>  
> -	rctx = ablkcipher_request_ctx(req);
> +	rctx = skcipher_request_ctx(req);
>  	rctx->mode = mode;
>  
>  	return mtk_aes_handle_queue(cryp, !(mode & AES_FLAGS_ENCRYPT),
>  				    &req->base);
>  }
>  
> -static int mtk_aes_ecb_encrypt(struct ablkcipher_request *req)
> +static int mtk_aes_ecb_encrypt(struct skcipher_request *req)
>  {
>  	return mtk_aes_crypt(req, AES_FLAGS_ENCRYPT | AES_FLAGS_ECB);
>  }
>  
> -static int mtk_aes_ecb_decrypt(struct ablkcipher_request *req)
> +static int mtk_aes_ecb_decrypt(struct skcipher_request *req)
>  {
>  	return mtk_aes_crypt(req, AES_FLAGS_ECB);
>  }
>  
> -static int mtk_aes_cbc_encrypt(struct ablkcipher_request *req)
> +static int mtk_aes_cbc_encrypt(struct skcipher_request *req)
>  {
>  	return mtk_aes_crypt(req, AES_FLAGS_ENCRYPT | AES_FLAGS_CBC);
>  }
>  
> -static int mtk_aes_cbc_decrypt(struct ablkcipher_request *req)
> +static int mtk_aes_cbc_decrypt(struct skcipher_request *req)
>  {
>  	return mtk_aes_crypt(req, AES_FLAGS_CBC);
>  }
>  
> -static int mtk_aes_ctr_encrypt(struct ablkcipher_request *req)
> +static int mtk_aes_ctr_encrypt(struct skcipher_request *req)
>  {
>  	return mtk_aes_crypt(req, AES_FLAGS_ENCRYPT | AES_FLAGS_CTR);
>  }
>  
> -static int mtk_aes_ctr_decrypt(struct ablkcipher_request *req)
> +static int mtk_aes_ctr_decrypt(struct skcipher_request *req)
>  {
>  	return mtk_aes_crypt(req, AES_FLAGS_CTR);
>  }
>  
> -static int mtk_aes_ofb_encrypt(struct ablkcipher_request *req)
> +static int mtk_aes_ofb_encrypt(struct skcipher_request *req)
>  {
>  	return mtk_aes_crypt(req, AES_FLAGS_ENCRYPT | AES_FLAGS_OFB);
>  }
>  
> -static int mtk_aes_ofb_decrypt(struct ablkcipher_request *req)
> +static int mtk_aes_ofb_decrypt(struct skcipher_request *req)
>  {
>  	return mtk_aes_crypt(req, AES_FLAGS_OFB);
>  }
>  
> -static int mtk_aes_cfb_encrypt(struct ablkcipher_request *req)
> +static int mtk_aes_cfb_encrypt(struct skcipher_request *req)
>  {
>  	return mtk_aes_crypt(req, AES_FLAGS_ENCRYPT | AES_FLAGS_CFB128);
>  }
>  
> -static int mtk_aes_cfb_decrypt(struct ablkcipher_request *req)
> +static int mtk_aes_cfb_decrypt(struct skcipher_request *req)
>  {
>  	return mtk_aes_crypt(req, AES_FLAGS_CFB128);
>  }
>  
> -static int mtk_aes_cra_init(struct crypto_tfm *tfm)
> +static int mtk_aes_init_tfm(struct crypto_skcipher *tfm)
>  {
> -	struct mtk_aes_ctx *ctx = crypto_tfm_ctx(tfm);
> +	struct mtk_aes_ctx *ctx = crypto_skcipher_ctx(tfm);
>  
> -	tfm->crt_ablkcipher.reqsize = sizeof(struct mtk_aes_reqctx);
> +	crypto_skcipher_set_reqsize(tfm, sizeof(struct mtk_aes_reqctx));
>  	ctx->base.start = mtk_aes_start;
>  	return 0;
>  }
>  
> -static int mtk_aes_ctr_cra_init(struct crypto_tfm *tfm)
> +static int mtk_aes_ctr_init_tfm(struct crypto_skcipher *tfm)
>  {
> -	struct mtk_aes_ctx *ctx = crypto_tfm_ctx(tfm);
> +	struct mtk_aes_ctx *ctx = crypto_skcipher_ctx(tfm);
>  
> -	tfm->crt_ablkcipher.reqsize = sizeof(struct mtk_aes_reqctx);
> +	crypto_skcipher_set_reqsize(tfm, sizeof(struct mtk_aes_reqctx));
>  	ctx->base.start = mtk_aes_ctr_start;
>  	return 0;
>  }
>  
> -static struct crypto_alg aes_algs[] = {
> +static struct skcipher_alg aes_algs[] = {
>  {
> -	.cra_name		= "cbc(aes)",
> -	.cra_driver_name	= "cbc-aes-mtk",
> -	.cra_priority		= 400,
> -	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
> -				  CRYPTO_ALG_ASYNC,
> -	.cra_init		= mtk_aes_cra_init,
> -	.cra_blocksize		= AES_BLOCK_SIZE,
> -	.cra_ctxsize		= sizeof(struct mtk_aes_ctx),
> -	.cra_alignmask		= 0xf,
> -	.cra_type		= &crypto_ablkcipher_type,
> -	.cra_module		= THIS_MODULE,
> -	.cra_u.ablkcipher = {
> -		.min_keysize	= AES_MIN_KEY_SIZE,
> -		.max_keysize	= AES_MAX_KEY_SIZE,
> -		.setkey		= mtk_aes_setkey,
> -		.encrypt	= mtk_aes_cbc_encrypt,
> -		.decrypt	= mtk_aes_cbc_decrypt,
> -		.ivsize		= AES_BLOCK_SIZE,
> -	}
> +	.base.cra_name		= "cbc(aes)",
> +	.base.cra_driver_name	= "cbc-aes-mtk",
> +	.base.cra_priority	= 400,
> +	.base.cra_flags		= CRYPTO_ALG_ASYNC,
> +	.base.cra_blocksize	= AES_BLOCK_SIZE,
> +	.base.cra_ctxsize	= sizeof(struct mtk_aes_ctx),
> +	.base.cra_alignmask	= 0xf,
> +	.base.cra_module	= THIS_MODULE,
> +
> +	.min_keysize		= AES_MIN_KEY_SIZE,
> +	.max_keysize		= AES_MAX_KEY_SIZE,
> +	.setkey			= mtk_aes_setkey,
> +	.encrypt		= mtk_aes_cbc_encrypt,
> +	.decrypt		= mtk_aes_cbc_decrypt,
> +	.ivsize			= AES_BLOCK_SIZE,
> +	.init			= mtk_aes_init_tfm,
>  },
>  {
> -	.cra_name		= "ecb(aes)",
> -	.cra_driver_name	= "ecb-aes-mtk",
> -	.cra_priority		= 400,
> -	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
> -				  CRYPTO_ALG_ASYNC,
> -	.cra_init		= mtk_aes_cra_init,
> -	.cra_blocksize		= AES_BLOCK_SIZE,
> -	.cra_ctxsize		= sizeof(struct mtk_aes_ctx),
> -	.cra_alignmask		= 0xf,
> -	.cra_type		= &crypto_ablkcipher_type,
> -	.cra_module		= THIS_MODULE,
> -	.cra_u.ablkcipher = {
> -		.min_keysize	= AES_MIN_KEY_SIZE,
> -		.max_keysize	= AES_MAX_KEY_SIZE,
> -		.setkey		= mtk_aes_setkey,
> -		.encrypt	= mtk_aes_ecb_encrypt,
> -		.decrypt	= mtk_aes_ecb_decrypt,
> -	}
> +	.base.cra_name		= "ecb(aes)",
> +	.base.cra_driver_name	= "ecb-aes-mtk",
> +	.base.cra_priority	= 400,
> +	.base.cra_flags		= CRYPTO_ALG_ASYNC,
> +	.base.cra_blocksize	= AES_BLOCK_SIZE,
> +	.base.cra_ctxsize	= sizeof(struct mtk_aes_ctx),
> +	.base.cra_alignmask	= 0xf,
> +	.base.cra_module	= THIS_MODULE,
> +
> +	.min_keysize		= AES_MIN_KEY_SIZE,
> +	.max_keysize		= AES_MAX_KEY_SIZE,
> +	.setkey			= mtk_aes_setkey,
> +	.encrypt		= mtk_aes_ecb_encrypt,
> +	.decrypt		= mtk_aes_ecb_decrypt,
> +	.init			= mtk_aes_init_tfm,
>  },
>  {
> -	.cra_name		= "ctr(aes)",
> -	.cra_driver_name	= "ctr-aes-mtk",
> -	.cra_priority		= 400,
> -	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
> -				  CRYPTO_ALG_ASYNC,
> -	.cra_init		= mtk_aes_ctr_cra_init,
> -	.cra_blocksize		= 1,
> -	.cra_ctxsize		= sizeof(struct mtk_aes_ctr_ctx),
> -	.cra_alignmask		= 0xf,
> -	.cra_type		= &crypto_ablkcipher_type,
> -	.cra_module		= THIS_MODULE,
> -	.cra_u.ablkcipher = {
> -		.min_keysize	= AES_MIN_KEY_SIZE,
> -		.max_keysize	= AES_MAX_KEY_SIZE,
> -		.ivsize		= AES_BLOCK_SIZE,
> -		.setkey		= mtk_aes_setkey,
> -		.encrypt	= mtk_aes_ctr_encrypt,
> -		.decrypt	= mtk_aes_ctr_decrypt,
> -	}
> +	.base.cra_name		= "ctr(aes)",
> +	.base.cra_driver_name	= "ctr-aes-mtk",
> +	.base.cra_priority	= 400,
> +	.base.cra_flags		= CRYPTO_ALG_ASYNC,
> +	.base.cra_blocksize	= 1,
> +	.base.cra_ctxsize	= sizeof(struct mtk_aes_ctx),
> +	.base.cra_alignmask	= 0xf,
> +	.base.cra_module	= THIS_MODULE,
> +
> +	.min_keysize		= AES_MIN_KEY_SIZE,
> +	.max_keysize		= AES_MAX_KEY_SIZE,
> +	.ivsize			= AES_BLOCK_SIZE,
> +	.setkey			= mtk_aes_setkey,
> +	.encrypt		= mtk_aes_ctr_encrypt,
> +	.decrypt		= mtk_aes_ctr_decrypt,
> +	.init			= mtk_aes_ctr_init_tfm,
>  },
>  {
> -	.cra_name		= "ofb(aes)",
> -	.cra_driver_name	= "ofb-aes-mtk",
> -	.cra_priority		= 400,
> -	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
> -				  CRYPTO_ALG_ASYNC,
> -	.cra_init		= mtk_aes_cra_init,
> -	.cra_blocksize		= 1,
> -	.cra_ctxsize		= sizeof(struct mtk_aes_ctx),
> -	.cra_alignmask		= 0xf,
> -	.cra_type		= &crypto_ablkcipher_type,
> -	.cra_module		= THIS_MODULE,
> -	.cra_u.ablkcipher = {
> -		.min_keysize	= AES_MIN_KEY_SIZE,
> -		.max_keysize	= AES_MAX_KEY_SIZE,
> -		.ivsize		= AES_BLOCK_SIZE,
> -		.setkey		= mtk_aes_setkey,
> -		.encrypt	= mtk_aes_ofb_encrypt,
> -		.decrypt	= mtk_aes_ofb_decrypt,
> -	}
> +	.base.cra_name		= "ofb(aes)",
> +	.base.cra_driver_name	= "ofb-aes-mtk",
> +	.base.cra_priority	= 400,
> +	.base.cra_flags		= CRYPTO_ALG_ASYNC,
> +	.base.cra_blocksize	= AES_BLOCK_SIZE,
> +	.base.cra_ctxsize	= sizeof(struct mtk_aes_ctx),
> +	.base.cra_alignmask	= 0xf,
> +	.base.cra_module	= THIS_MODULE,
> +
> +	.min_keysize		= AES_MIN_KEY_SIZE,
> +	.max_keysize		= AES_MAX_KEY_SIZE,
> +	.ivsize			= AES_BLOCK_SIZE,
> +	.setkey			= mtk_aes_setkey,
> +	.encrypt		= mtk_aes_ofb_encrypt,
> +	.decrypt		= mtk_aes_ofb_decrypt,
>  },
>  {
> -	.cra_name		= "cfb(aes)",
> -	.cra_driver_name	= "cfb-aes-mtk",
> -	.cra_priority		= 400,
> -	.cra_flags		= CRYPTO_ALG_TYPE_ABLKCIPHER |
> -				  CRYPTO_ALG_ASYNC,
> -	.cra_init		= mtk_aes_cra_init,
> -	.cra_blocksize		= 1,
> -	.cra_ctxsize		= sizeof(struct mtk_aes_ctx),
> -	.cra_alignmask		= 0xf,
> -	.cra_type		= &crypto_ablkcipher_type,
> -	.cra_module		= THIS_MODULE,
> -	.cra_u.ablkcipher = {
> -		.min_keysize	= AES_MIN_KEY_SIZE,
> -		.max_keysize	= AES_MAX_KEY_SIZE,
> -		.ivsize		= AES_BLOCK_SIZE,
> -		.setkey		= mtk_aes_setkey,
> -		.encrypt	= mtk_aes_cfb_encrypt,
> -		.decrypt	= mtk_aes_cfb_decrypt,
> -	}
> +	.base.cra_name		= "cfb(aes)",
> +	.base.cra_driver_name	= "cfb-aes-mtk",
> +	.base.cra_priority	= 400,
> +	.base.cra_flags		= CRYPTO_ALG_ASYNC,
> +	.base.cra_blocksize	= 1,
> +	.base.cra_ctxsize	= sizeof(struct mtk_aes_ctx),
> +	.base.cra_alignmask	= 0xf,
> +	.base.cra_module	= THIS_MODULE,
> +
> +	.min_keysize		= AES_MIN_KEY_SIZE,
> +	.max_keysize		= AES_MAX_KEY_SIZE,
> +	.ivsize			= AES_BLOCK_SIZE,
> +	.setkey			= mtk_aes_setkey,
> +	.encrypt		= mtk_aes_cfb_encrypt,
> +	.decrypt		= mtk_aes_cfb_decrypt,
>  },
>  };
>  
> @@ -1259,7 +1243,7 @@ static void mtk_aes_unregister_algs(void)
>  	crypto_unregister_aead(&aes_gcm_alg);
>  
>  	for (i = 0; i < ARRAY_SIZE(aes_algs); i++)
> -		crypto_unregister_alg(&aes_algs[i]);
> +		crypto_unregister_skcipher(&aes_algs[i]);
>  }
>  
>  static int mtk_aes_register_algs(void)
> @@ -1267,7 +1251,7 @@ static int mtk_aes_register_algs(void)
>  	int err, i;
>  
>  	for (i = 0; i < ARRAY_SIZE(aes_algs); i++) {
> -		err = crypto_register_alg(&aes_algs[i]);
> +		err = crypto_register_skcipher(&aes_algs[i]);
>  		if (err)
>  			goto err_aes_algs;
>  	}
> @@ -1280,7 +1264,7 @@ static int mtk_aes_register_algs(void)
>  
>  err_aes_algs:
>  	for (; i--; )
> -		crypto_unregister_alg(&aes_algs[i]);
> +		crypto_unregister_skcipher(&aes_algs[i]);
>  
>  	return err;
>  }
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
