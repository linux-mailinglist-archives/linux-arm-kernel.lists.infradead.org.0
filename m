Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 341E7AE6E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 11:27:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pqr5j0xH1htIhTiwqRsfiFEKnZnzVZS/LzYzF5lhgqc=; b=UrVMzleopfReaM
	bqMOIwzHYwixfA7qsZwmq0LhgxxomoGMa0Tf7kW2z4uFq8RwPHArHtnAQJE/12VRPRyJ/cBSn9FX/
	nOXPrjEk5ccWo5RL85jR7GHL4mheAvSN93rdnZgu9ixZWBzQGiIKHWtizgedRUeQ8hoz4ZkL3Fwaz
	tH+sVtrUcIHhPkw70aeDI74Ee5SOIJKr82CS4NSwrHTmMtX5h8xFsV6Np/QifwIo1Y/evI1POgo6G
	T80CmLY4ybKVRSDVmGooi5WrLELKr4Pw24SGTau0kGjWKjEchF3b5EZkGDefYXxD5e+4EgGxSHHVr
	TDeBhdUpqsOXZQez2qLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7cQj-00041k-Jx; Tue, 10 Sep 2019 09:27:21 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7cQV-00041C-Qo; Tue, 10 Sep 2019 09:27:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D4AA4AF68;
 Tue, 10 Sep 2019 09:27:05 +0000 (UTC)
Subject: Re: [PATCH v5 0/4] Raspberry Pi 4 DMA addressing support
To: Stefan Wahren <wahrenst@gmx.net>, catalin.marinas@arm.com,
 marc.zyngier@arm.com, robh+dt@kernel.org, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org, linux-riscv@lists.infradead.org,
 hch@lst.de, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20190909095807.18709-1-nsaenzjulienne@suse.de>
 <5a8af6e9-6b90-ce26-ebd7-9ee626c9fa0e@gmx.net>
From: Matthias Brugger <mbrugger@suse.com>
Openpgp: preference=signencrypt
Autocrypt: addr=mbrugger@suse.com; prefer-encrypt=mutual; keydata=
 mQINBFP1zgUBEAC21D6hk7//0kOmsUrE3eZ55kjc9DmFPKIz6l4NggqwQjBNRHIMh04BbCMY
 fL3eT7ZsYV5nur7zctmJ+vbszoOASXUpfq8M+S5hU2w7sBaVk5rpH9yW8CUWz2+ZpQXPJcFa
 OhLZuSKB1F5JcvLbETRjNzNU7B3TdS2+zkgQQdEyt7Ij2HXGLJ2w+yG2GuR9/iyCJRf10Okq
 gTh//XESJZ8S6KlOWbLXRE+yfkKDXQx2Jr1XuVvM3zPqH5FMg8reRVFsQ+vI0b+OlyekT/Xe
 0Hwvqkev95GG6x7yseJwI+2ydDH6M5O7fPKFW5mzAdDE2g/K9B4e2tYK6/rA7Fq4cqiAw1+u
 EgO44+eFgv082xtBez5WNkGn18vtw0LW3ESmKh19u6kEGoi0WZwslCNaGFrS4M7OH+aOJeqK
 fx5dIv2CEbxc6xnHY7dwkcHikTA4QdbdFeUSuj4YhIZ+0QlDVtS1QEXyvZbZky7ur9rHkZvP
 ZqlUsLJ2nOqsmahMTIQ8Mgx9SLEShWqD4kOF4zNfPJsgEMB49KbS2o9jxbGB+JKupjNddfxZ
 HlH1KF8QwCMZEYaTNogrVazuEJzx6JdRpR3sFda/0x5qjTadwIW6Cl9tkqe2h391dOGX1eOA
 1ntn9O/39KqSrWNGvm+1raHK+Ev1yPtn0Wxn+0oy1tl67TxUjQARAQABtCRNYXR0aGlhcyBC
 cnVnZ2VyIDxtYnJ1Z2dlckBzdXNlLmNvbT6JAjgEEwECACIFAlV6iM0CGwMGCwkIBwMCBhUI
 AgkKCwQWAgMBAh4BAheAAAoJENkUC7JWEwLx6isQAIMGBgJnFWovDS7ClZtjz1LgoY8skcMU
 ghUZY4Z/rwwPqmMPbY8KYDdOFA+kMTEiAHOR+IyOVe2+HlMrXv/qYH4pRoxQKm8H9FbdZXgL
 bG8IPlBu80ZSOwWjVH+tG62KHW4RzssVrgXEFR1ZPTdbfN+9Gtf7kKxcGxWnurRJFzBEZi4s
 RfTSulQKqTxJ/sewOb/0kfGOJYPAt/QN5SUaWa6ILa5QFg8bLAj6bZ81CDStswDt/zJmAWp0
 08NOnhrZaTQdRU7mTMddUph5YVNXEXd3ThOl8PetTyoSCt04PPTDDmyeMgB5C3INLo1AXhEp
 NTdu+okvD56MqCxgMfexXiqYOkEWs/wv4LWC8V8EI3Z+DQ0YuoymI5MFPsW39aPmmBhSiacx
 diC+7cQVQRwBR6Oz/k9oLc+0/15mc+XlbvyYfscGWs6CEeidDQyNKE/yX75KjLUSvOXYV4d4
 UdaNrSoEcK/5XlW5IJNM9yae6ZOL8vZrs5u1+/w7pAlCDAAokz/As0vZ7xWiePrI+kTzuOt5
 psfJOdEoMKQWWFGd/9olX5ZAyh9iXk9TQprGUOaX6sFjDrsTRycmmD9i4PdQTawObEEiAfzx
 1m2MwiDs2nppsRr7qwAjyRhCq2TOAh0EDRNgYaSlbIXX/zp38FpK/9DMbtH14vVvG6FXog75
 HBoOuQINBFP1zgUBEACp0Zal3NxIzyrojahM9LkngpdcglLw7aNtRzGg25pIGdSSHCnZ4wv+
 LfSgtsQL5qSZqBw4sPSQ5jjrJEV5IQJI8z1JYvEq8pRNBgYtfaymE9VneER0Vgp6ff5xu+jo
 bJhOebyuikcz26qZc9kUV8skMvvo1q6QWxF88xBS7Ax7eEVUuYXue291fdneMoiagxauAD9K
 exPorjSf8YKXUc3PZPw9KeoBRCO9KggUB6fFvbc21bqSDnTEjGVvsMpudydAYZPChify70uD
 GSHyAnTcgyJIMdn2j7CXbVTwHc5evUovTy9eZ1HvR3owlKa3qkqzvJOPGtoXRlLqDP4XYFPL
 TzSPFx5nARYghsrvNTe2bWGevtAhuP8fpbY+/2nkJfNAIjDXsVcVeOkY9r2SfN3hYzMm/ZGD
 H+bz9kb3Voqr7gJvP1MtDs7JF1eqE8kKil8qBnaX8Vzn4AaGiAkvE6ikGgQsh0eAHnQO6vHh
 gkuZDXP+iKYPQ7+ZRvl8m7QVRDkGhzWQccnwnxtlO4WsYCiZ++ex6T53J6d6CoGlkIOeIJJ9
 2B4DH2hY2hcbhyCjw5Ubsn/VghYEdFpaeT5bJcYF9tj/zbjsbLyhpe1CzU6d6FswoEdEhjS2
 CjJSVqDfBe5TN4r7Q8q1YLtlh6Uo0LQWf7Mv1emcrccsTlySEEuArwARAQABiQIfBBgBAgAJ
 BQJT9c4FAhsMAAoJENkUC7JWEwLxjK4P/2Dr4lln6gTLsegZnQFrCeXG7/FCvNor+W1CEDa+
 2IxrEI3jqA68QX/H4i8WxwC5ybergPJskmRbapjfQhIr0wMQue50+YdGoLFOPyShpu9wjVw/
 xnQXDWt4w1lWBaBVkmTAe49ieSFjXm7e8cPNxad+e+aC4qBignGSqp2n9pxvTH+qlCC5+tYZ
 5i/bJvVg2J1cEdMlK56UVwan+gFd4nOtDYg/UkFtCZB89J49nNZ1IuWtH7eNwEkQ/8D/veVI
 5s5CmJgmiZc9yVrp0f6LJXQiKJl1iBQe3Cu7hK2/9wVUWxQmTV8g4/WqNJr4vpjR1ZfokyeK
 pRceFpejo49/sCulVsHKAy7O/L30u1IVKQxxheffn2xc5ixHLhX5ivsGzSXN2cecp2lWoeIO
 82Cusug82spOJjBObNNVtv278GNQaEJhRLvTm9yMGBeF1dLjiSA7baRoHlzo5uDtY/ty5wWi
 YhOi+1mzlGbWJpllzfWXOht8U9TANJxhc6PpyRL1sX2UMbbrPcL+a7KKJ9l6JC+8bXKB7Gse
 2cphM3GqKw4aONxfMPOlLx6Ag60gQj9qvOWorlGmswtU6Xqf+enERaYieMF62wGxpf/2Qk1k
 UzhhqKzmxw6c/625OcVNbYr3ErJLK4Or+Is5ElhFgyWgk9oMB+2Jh+MVrzO7DVedDIbXuQIN
 BFP2BfcBEACwvZTDK9ItC4zE5bYZEu8KJm7G0gShS6FoFZ0L9irdzqtalO7r3aWEt3htGkom
 QTicTexppNXEgcUXe23cgdJrdB/zfVKVbf0SRwXGvsNs7XuRFOE7JTWTsoOFRCqFFpShPU3O
 evKS+lOU2zOFg2MDQIxhYfbj0wleBySIo57NIdtDZtla0Ube5OWhZIqWgWyOyZGxvtWfYWXJ
 4/7TQ9ULqPsJGpzPGmTJige6ohLTDXMCrwc/kMNIfv5quKO0+4mFW/25qIPpgUuBIhDLhkJm
 4xx3MonPaPooLDaRRct6GTgFTfbo7Qav34CiNlPwneq9lgGm8KYiEaWIqFnulgMplZWx5HDu
 slLlQWey3k4G6QEiM5pJV2nokyl732hxouPKjDYHLoMIRiAsKuq7O5TExDymUQx88PXJcGjT
 Rss9q2S7EiJszQbgiy0ovmFIAqJoUJzZ/vemmnt5vLdlx7IXi4IjE3cAGNb1kIQBwTALjRLe
 ueHbBmGxwEVn7uw7v4WCx3TDrvOOm35gcU2/9yFEmI+cMYZG3SM9avJpqwOdC0AB/n0tjep3
 gZUe7xEDUbRHPiFXDbvKywcbJxzj79llfuw+mA0qWmxOgxoHk1aBzfz0d2o4bzQhr6waQ2P3
 KWnvgw9t3S3d/NCcpfMFIc4I25LruxyVQDDscH7BrcGqCwARAQABiQQ+BBgBAgAJBQJT9gX3
 AhsCAikJENkUC7JWEwLxwV0gBBkBAgAGBQJT9gX3AAoJELQ5Ylss8dNDXjEP/1ysQpk7CEhZ
 ffZRe8H+dZuETHr49Aba5aydqHuhzkPtX5pjszWPLlp/zKGWFV1rEvnFSh6l84/TyWQIS5J2
 thtLnAFxCPg0TVBSh4CMkpurgnDFSRcFqrYu73VRml0rERUV9KQTOZ4xpW8KUaMY600JQqXy
 XAu62FTt0ZNbviYlpbmOOVeV2DN/MV0GRLd+xd9yZ4OEeHlOkDh7cxhUEgmurpF6m/XnWD/P
 F0DTaCMmAa8mVdNvo6ARkY0WvwsYkOEs/sxKSwHDojEIAlKJwwRK7mRewl9w4OWbjMVpXxAM
 F68j+z9OA5D0pD8QlCwb5cEC6HR2qm4iaYJ2GUfH5hoabAo7X/KF9a+DWHXFtWf3yLN6i2ar
 X7QnWO322AzXswa+AeOa+qVpj6hRd+M6QeRwIY69qjm4Cx11CFlxIuYuGtKi3xYkjTPc0gzf
 TKI3H+vo4y7juXNOht1gJTz/ybtGGyp/JbrwP5dHT3w0iVTahjLXNR63Dn1Ykt/aPm7oPpr2
 nXR2hjmVhQR5OPL0SOz9wv61BsbCBaFbApVqXWUC1lVqu7QYxtJBDYHJxmxn4f6xtXCkM0Q7
 FBpA8yYTPCC/ZKTaG9Hd1OeFShRpWhGFATf/59VFtYcQSuiH/69dXqfg+zlsN37vk0JD+V89
 k3MbGDGpt3+t3bBK1VmlBeSGh8wP/iRnwiK8dlhpMD651STeJGbSXSqe5fYzl5RvIdbSxlU+
 cvs5rg4peg6KvURbDPOrQY1mMcKHoLO8s5vX6mWWcyQGTLQb/63G2C+PlP/froStQX6VB+A2
 0Q0pjoify3DTqE8lu7WxRNAiznQmD2FE2QNIhDnjhpyTR/M66xI8z6+jo6S8ge3y1XR9M7Wa
 5yXAJf/mNvvNAgOAaJQiBLzLQziEiQ8q92aC6s/LCLvicShBCsoXouk9hgewO15ZH+TabYE6
 PRyJkMgjFVHT1j2ahAiMEsko3QnbVcl4CBqbi4tXanWREN3D9JPm4wKoPhCLnOtnJaKUJyLq
 MXVNHZUS33ToTb4BncESF5HKfzJvYo75wkPeQHhHM7IEL8Kr8IYC6N8ORGLLXKkUXdORl3Jr
 Q2cyCRr0tfAFXb2wDD2++vEfEZr6075GmApHLCvgCXtAaLDu1E9vGRxq2TGDrs5xHKe19PSV
 sqVJMRBTEzTqq/AU3uehtz1iIklN4u6B9rh8KqFALKq5ZVWhU/4ycuqTO7UXqVIHp0YimJbS
 zcvDIT9ZsIBUGto+gQ2W3r2MjRZNe8fi/vXMR99hoZaq2tKLN7bTH3Fl/lz8C6SnHRSayqF4
 p6hKmsrJEP9aP8uCy5MTZSh3zlTfpeR4Vh63BBjWHeWiTZlv/e4WFavQ2qZPXgQvuQINBFP2
 CRIBEACnG1DjNQwLnXaRn6AKLJIVwgX+YB/v6Xjnrz1OfssjXGY9CsBgkOipBVdzKHe62C28
 G8MualD7UF8Q40NZzwpE/oBujflioHHe50CQtmCv9GYSDf5OKh/57U8nbNGHnOZ16LkxPxuI
 TbNV30NhIkdnyW0RYgAsL2UCy/2hr7YvqdoL4oUXeLSbmbGSWAWhK2GzBSeieq9yWyNhqJU+
 hKV0Out4I/OZEJR3zOd//9ngHG2VPDdK6UXzB4osn4eWnDyXBvexSXrI9LqkvpRXjmDJYx7r
 vttVS3Etg676SK/YH/6es1EOzsHfnL8ni3x20rRLcz/vG2Kc+JhGaycl2T6x0B7xOAaQRqig
 XnuTVpzNwmVRMFC+VgASDY0mepoqDdIInh8S5PysuPO5mYuSgc26aEf+YRvIpxrzYe8A27kL
 1yXJC6wl1T4w1FAtGY4B3/DEYsnTGYDJ7s7ONrzoAjNsSa42E0f3E2PBvBIk1l59XZKhlS/T
 5X0R8RXFPOtoE1RmJ+q/qF6ucxBcbGz6UGOfKXrbhTyedBacDw/AnaEjcN5Ci7UfKksU95j0
 N9a/jFh2TJ460am554GWqG0yhnSQPDYLe/OPvudbAGCmCfVWl/iEb+xb8JFHq24hBZZO9Qzc
 AJrWmASwG8gQGJW8/HIC0v4v4uHVKeLvDccGTUQm9QARAQABiQIfBBgBAgAJBQJT9gkSAhsM
 AAoJENkUC7JWEwLxCd0QAK43Xqa+K+dbAsN3Km9yjk8XzD3Kt9kMpbiCB/1MVUH2yTMw0K5B
 z61z5Az6eLZziQoh3PaOZyDpDK2CpW6bpXU6w2amMANpCRWnmMvS2aDr8oD1O+vTsq6/5Sji
 1KtL/h2MOMmdccSn+0H4XDsICs21S0uVzxK4AMKYwP6QE5VaS1nLOQGQN8FeVNaXjpP/zb3W
 USykNZ7lhbVkAf8d0JHWtA1laM0KkHYKJznwJgwPWtKicKdt9R7Jlg02E0dmiyXh2Xt/5qbz
 tDbHekrQMtKglHFZvu9kHS6j0LMJKbcj75pijMXbnFChP7vMLHZxCLfePC+ckArWjhWU3Hfp
 F+vHMGpzW5kbMkEJC7jxSOZRKxPBYLcekT8P2wz7EAKzzTeUVQhkLkfrYbTn1wI8BcqCwWk0
 wqYEBbB4GRUkCKyhB5fnQ4/7/XUCtXRy/585N8mPT8rAVclppiHctRA0gssE3GRKuEIuXx1S
 DnchsfHg18gCCrEtYZ9czwNjVoV1Tv2lpzTTk+6HEJaQpMnPeAKbOeehq3gYKcvmDL+bRCTj
 mXg8WrBZdUuj0BCDYqneaUgVnp+wQogA3mHGVs281v1XZmjlsVmM9Y8VPE614zSiZQBL5Cin
 BTTI8ssYlV/aIKYi0dxRcj6vYnAfUImOsdZ5AQja5xIqw1rwWWUOYb99
Message-ID: <3f9af46e-2e1a-771f-57f2-86a53caaf94a@suse.com>
Date: Tue, 10 Sep 2019 11:27:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5a8af6e9-6b90-ce26-ebd7-9ee626c9fa0e@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_022708_161115_B5B6D8C0 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: f.fainelli@gmail.com, robin.murphy@arm.com, linux-kernel@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, phill@raspberrypi.org, will@kernel.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/09/2019 21:33, Stefan Wahren wrote:
> Hi Nicolas,
> 
> Am 09.09.19 um 11:58 schrieb Nicolas Saenz Julienne:
>> Hi all,
>> this series attempts to address some issues we found while bringing up
>> the new Raspberry Pi 4 in arm64 and it's intended to serve as a follow
>> up of these discussions:
>> v4: https://lkml.org/lkml/2019/9/6/352
>> v3: https://lkml.org/lkml/2019/9/2/589
>> v2: https://lkml.org/lkml/2019/8/20/767
>> v1: https://lkml.org/lkml/2019/7/31/922
>> RFC: https://lkml.org/lkml/2019/7/17/476
>>
>> The new Raspberry Pi 4 has up to 4GB of memory but most peripherals can
>> only address the first GB: their DMA address range is
>> 0xc0000000-0xfc000000 which is aliased to the first GB of physical
>> memory 0x00000000-0x3c000000. Note that only some peripherals have these
>> limitations: the PCIe, V3D, GENET, and 40-bit DMA channels have a wider
>> view of the address space by virtue of being hooked up trough a second
>> interconnect.
>>
>> Part of this is solved on arm32 by setting up the machine specific
>> '.dma_zone_size = SZ_1G', which takes care of reserving the coherent
>> memory area at the right spot. That said no buffer bouncing (needed for
>> dma streaming) is available at the moment, but that's a story for
>> another series.
>>
>> Unfortunately there is no such thing as 'dma_zone_size' in arm64. Only
>> ZONE_DMA32 is created which is interpreted by dma-direct and the arm64
>> arch code as if all peripherals where be able to address the first 4GB
>> of memory.
>>
>> In the light of this, the series implements the following changes:
>>
>> - Create both DMA zones in arm64, ZONE_DMA will contain the first 1G
>>   area and ZONE_DMA32 the rest of the 32 bit addressable memory. So far
>>   the RPi4 is the only arm64 device with such DMA addressing limitations
>>   so this hardcoded solution was deemed preferable.
>>
>> - Properly set ARCH_ZONE_DMA_BITS.
>>
>> - Reserve the CMA area in a place suitable for all peripherals.
>>
>> This series has been tested on multiple devices both by checking the
>> zones setup matches the expectations and by double-checking physical
>> addresses on pages allocated on the three relevant areas GFP_DMA,
>> GFP_DMA32, GFP_KERNEL:
>>
>> - On an RPi4 with variations on the ram memory size. But also forcing
>>   the situation where all three memory zones are nonempty by setting a 3G
>>   ZONE_DMA32 ceiling on a 4G setup. Both with and without NUMA support.
>>
> i like to test this series on Raspberry Pi 4 and i have some questions
> to get arm64 running:
> 
> Do you use U-Boot? Which tree?

If you want to use U-Boot, try v2019.10-rc4, it should have everything you need
to boot your kernel.

Regards,
Matthias

> Are there any config.txt tweaks necessary?
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
