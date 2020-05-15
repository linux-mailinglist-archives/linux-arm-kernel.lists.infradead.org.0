Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD4A1D47FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 10:19:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xyreY2ZHl1aiPht1UrVwxSJls87h5d37OSNB3BzWmbI=; b=TCER3x3YxSQEOF
	3gkmPYMXkC3U7PX96QIHdjEnCMcR3jJ5XeB88O0MmJtq7GHfqrEvyCqdLLMQY2+qqj6XLQ7K7OeCX
	BFiaeRZu9BXRS3UHyOcx405snVbenX0ERZzXtW8h0OE52Ki+hT8EeU4UysLPzTPcpJxf3aiLGturh
	AOJ+SZX4oPio4VgmPiJEvD4iqZAYsTvNBLww5pPzFOF/Rj5/I9CXCfsRVvOJQWdKh+W5XFGcmFsmT
	HjtgL3ZwzbAb3dYIq88+Tny9mm1ngPsaeBF5sLexMXShN4XJPxgLdbpzEaJXTcQdLFtOAvhia2ZQD
	a5TBetcYyPwCBppiVI5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZVZB-0006f5-Jj; Fri, 15 May 2020 08:19:37 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZVYu-0006bJ-P5
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 08:19:23 +0000
Received: from dggemi402-hub.china.huawei.com (unknown [172.30.72.53])
 by Forcepoint Email with ESMTP id 57BA4B1B4A8D58F7EC80;
 Fri, 15 May 2020 16:19:08 +0800 (CST)
Received: from DGGEMI422-HUB.china.huawei.com (10.1.199.151) by
 dggemi402-hub.china.huawei.com (10.3.17.135) with Microsoft SMTP Server (TLS)
 id 14.3.487.0; Fri, 15 May 2020 16:19:08 +0800
Received: from DGGEMI525-MBS.china.huawei.com ([169.254.6.251]) by
 dggemi422-hub.china.huawei.com ([10.1.199.151]) with mapi id 14.03.0487.000;
 Fri, 15 May 2020 16:19:02 +0800
From: Song Bao Hua <song.bao.hua@hisilicon.com>
To: "linux@armlinux.org.uk" <linux@armlinux.org.uk>, "hch@lst.de"
 <hch@lst.de>, "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>, "dagum@barrel.engr.sgi.com"
 <dagum@barrel.engr.sgi.com>, "ralf@oss.sgi.com" <ralf@oss.sgi.com>,
 "grundler@cup.hp.com" <grundler@cup.hp.com>, "Jay.Estabrook@compaq.com"
 <Jay.Estabrook@compaq.com>, "sailer@ife.ee.ethz.ch" <sailer@ife.ee.ethz.ch>,
 "andrea@suse.de" <andrea@suse.de>, "jens.axboe@oracle.com"
 <jens.axboe@oracle.com>, "davidm@hpl.hp.com" <davidm@hpl.hp.com>
Subject: Constantly map and unmap of streaming DMA buffers with IOMMU
 backend might cause serious performance problem
Thread-Topic: Constantly map and unmap of streaming DMA buffers with IOMMU
 backend might cause serious performance problem
Thread-Index: AdYqec9gnuD/5zUSTfGZehfpOCqtzA==
Date: Fri, 15 May 2020 08:19:01 +0000
Message-ID: <B926444035E5E2439431908E3842AFD249F263@DGGEMI525-MBS.china.huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.126.201.44]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_011921_371050_7C515A66 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Linuxarm <linuxarm@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell & All,

In many DMA streaming map/unmap use cases, lower-layer device drivers completely have no idea how and when single/sg buffers are allocated and freed by upper-layer filesystem, network protocol, mm management system etc. So the only thing device drivers can do is constantly mapping the buffer before DMA begins and unmapping the buffer when DMA is done.

This will dramatically increase the latency of dma_map_single/sg and dma_unmap_single/sg when these APIs are bound with the IOMMU backend. As for each map, iommu driver needs to allocate iova and do the map in iommu. And for each unmap, it needs to free iova and unmap the buffer in iommu hardware. When devices performing DMA are super-fast, for example, on 100GbE networks, the DMA streaming map/unmap latency might become a critical system bottleneck.

In comparison to DMA streaming APIs, DMA consistent APIs using IOMMU backend may show much better performance as the map is done when the buffer is allocated and unmap is done when the buffer is freed. DMA can be done multiple times before the buffers are freed by dma_free_coherent(). There is no such map and unmap overhead for each separate DMA transfer as streaming APIs. The typical work flow is like
dma_alloc_coherent-> 
doing DMA -> 
doing DMA ->
doing DMA ->
.... /* DMA many times */
dma_free_coherent

However, the typical work flow for streaming DMA is like
dma_map_sg -> doing DMA -> dma_unmap_sg -> 
dma_map_sg -> doing DMA -> dma_unmap_sg ->  
dma_map_sg -> doing DMA -> dma_unmap_sg ->  
.... /* map, DMA transfer, unmap many times */

Even though upper-layer software might use the same buffers multiple times, for each single DMA transmission, map and unmap still need to be done by lower-level drivers as lower-layer drivers don't know this fact.

A possible routine to improve the performance of stream APIs is like:
dma_map_sg -> 
dma_sync_sg_for_device -> doing DMA -> 
dma_sync_sg_for_device -> doing DMA -> 
dma_sync_sg_for_device -> doing DMA -> 
... ->    /* sync between DMA and CPU many times */
dma_unmap_sg

For every single DMA, software only needs to do sync operations which are much lighter that map and unmap. But this case is often not applicable to device drivers as the buffers usually come from the upper-layer filesystem, network protocol, mm management system etc. Device drivers have to work with the assumption that the buffer will be freed immediately after DMA is done. However, for those device drivers which are able to allocate and free the DMA stream buffers by themselves, they will get benefits of reusing the same buffers for doing DMA multiple times without map/unmap overhead.

I collected some latency data for iommu_dma_map_sg and iommu_dma_unmap_sg. In the test case, zswap is calling acomp APIs to compress/decompress pages, and comp/decomp is done by lower-level hardware ZIP driver.
root@ubuntu:/usr/share/bcc/tools# ./funclatency iommu_dma_map_sg
Tracing 1 functions for "iommu_dma_map_sg"... Hit Ctrl-C to end.
^C
     nsecs               : count     distribution
         0 -> 1          : 0        |                                        |
         2 -> 3          : 0        |                                        |
         4 -> 7          : 0        |                                        |
         8 -> 15         : 0        |                                        |
        16 -> 31         : 0        |                                        |
        32 -> 63         : 0        |                                        |
        64 -> 127        : 0        |                                        |
       128 -> 255        : 0        |                                        |
       256 -> 511        : 0        |                                        |
       512 -> 1023       : 0        |                                        |
      1024 -> 2047       : 2274570  |***********************                 |
      2048 -> 4095       : 3896310  |****************************************|
      4096 -> 8191       : 74499    |                                        |
      8192 -> 16383      : 4475     |                                        |
     16384 -> 32767      : 1519     |                                        |
     32768 -> 65535      : 480      |                                        |
     65536 -> 131071     : 286      |                                        |
    131072 -> 262143     : 18       |                                        |
    262144 -> 524287     : 2        |                                        |

root@ubuntu:/usr/share/bcc/tools# ./funclatency iommu_dma_unmap_sg
Tracing 1 functions for "iommu_dma_unmap_sg"... Hit Ctrl-C to end.
^C
     nsecs               : count     distribution
         0 -> 1          : 0        |                                        |
         2 -> 3          : 0        |                                        |
         4 -> 7          : 0        |                                        |
         8 -> 15         : 0        |                                        |
        16 -> 31         : 0        |                                        |
        32 -> 63         : 0        |                                        |
        64 -> 127        : 0        |                                        |
       128 -> 255        : 0        |                                        |
       256 -> 511        : 0        |                                        |
       512 -> 1023       : 0        |                                        |
      1024 -> 2047       : 0        |                                        |
      2048 -> 4095       : 56083    |                                        |
      4096 -> 8191       : 5232036  |****************************************|
      8192 -> 16383      : 7723     |                                        |
     16384 -> 32767      : 1277     |                                        |
     32768 -> 65535      : 32       |                                        |
     65536 -> 131071     : 12       |                                        |
    131072 -> 262143     : 41       |                                        |

In contrast, if we set iommu passthrough, the latency will be much better:

root@ubuntu:/usr/share/bcc/tools# ./funclatency dma_direct_map_sg
Tracing 1 functions for "dma_direct_map_sg"... Hit Ctrl-C to end.
^C
     nsecs               : count     distribution
         0 -> 1          : 0        |                                        |
         2 -> 3          : 0        |                                        |
         4 -> 7          : 0        |                                        |
         8 -> 15         : 0        |                                        |
        16 -> 31         : 0        |                                        |
        32 -> 63         : 0        |                                        |
        64 -> 127        : 0        |                                        |
       128 -> 255        : 0        |                                        |
       256 -> 511        : 0        |                                        |
       512 -> 1023       : 10798    |                                        |
      1024 -> 2047       : 1435035  |****************************************|
      2048 -> 4095       : 13879    |                                        |
      4096 -> 8191       : 485      |                                        |
      8192 -> 16383      : 791      |                                        |
     16384 -> 32767      : 418      |                                        |
     32768 -> 65535      : 55       |                                        |
     65536 -> 131071     : 67       |                                        |
    131072 -> 262143     : 8        |                                        |

root@ubuntu:/usr/share/bcc/tools# ./funclatency dma_direct_unmap_sg
Tracing 1 functions for "dma_direct_unmap_sg"... Hit Ctrl-C to end.
^C
     nsecs               : count     distribution
         0 -> 1          : 0        |                                        |
         2 -> 3          : 0        |                                        |
         4 -> 7          : 0        |                                        |
         8 -> 15         : 0        |                                        |
        16 -> 31         : 0        |                                        |
        32 -> 63         : 0        |                                        |
        64 -> 127        : 0        |                                        |
       128 -> 255        : 0        |                                        |
       256 -> 511        : 0        |                                        |
       512 -> 1023       : 216      |                                        |
      1024 -> 2047       : 250849   |****************************************|
      2048 -> 4095       : 54341    |********                                |
      4096 -> 8191       : 80       |                                        |
      8192 -> 16383      : 191      |                                        |
     16384 -> 32767      : 65       |                                        |

In summary, the comparison is as below:
(1)map
iommu passthrough         mainly 1-2us
iommu non-passthrough     mainly 2-4us

(2)unmap
iommu passthrough         mainly 1-2us
iommu non-passthrough     mainly 4-8us

The below is the long function trace for each dma_map/unmap_sg while iommu is enabled:

  507.520069 |   53)               |  iommu_dma_map_sg() {
  507.520070 |   53)   0.670 us    |    iommu_get_dma_domain();
  507.520071 |   53)   0.610 us    |    iommu_dma_deferred_attach();
  507.520072 |   53)               |    iommu_dma_alloc_iova.isra.26() {
  507.520073 |   53)               |      alloc_iova_fast() {
  507.520074 |   53)               |        _raw_spin_lock_irqsave() {
  507.520074 |   53)   0.570 us    |          preempt_count_add();
  507.520076 |   53)   2.060 us    |        }
  507.520077 |   53)               |        _raw_spin_unlock_irqrestore() {
  507.520077 |   53)   0.790 us    |          preempt_count_sub();
  507.520079 |   53)   2.090 us    |        }
  507.520079 |   53)   6.260 us    |      }
  507.520080 |   53)   7.470 us    |    }
  507.520081 |   53)               |    iommu_map_sg_atomic() {
  507.520081 |   53)               |      __iommu_map_sg() {
  507.520082 |   53)               |        __iommu_map() {
  507.520082 |   53)   0.630 us    |          iommu_pgsize.isra.14();
  507.520084 |   53)               |          arm_smmu_map() {
  507.520084 |   53)               |            arm_lpae_map() {
  507.520085 |   53)               |              __arm_lpae_map() {
  507.520086 |   53)               |                __arm_lpae_map() {
  507.520086 |   53)               |                  __arm_lpae_map() {
  507.520087 |   53)   0.930 us    |                    __arm_lpae_map();
  507.520089 |   53)   2.170 us    |                  }
  507.520089 |   53)   3.490 us    |                }
  507.520090 |   53)   4.730 us    |              }
  507.520090 |   53)   5.980 us    |            }
  507.520091 |   53)   7.250 us    |          }
  507.520092 |   53)   0.650 us    |          iommu_pgsize.isra.14();
  507.520093 |   53)               |          arm_smmu_map() {
  507.520093 |   53)               |            arm_lpae_map() {
  507.520094 |   53)               |              __arm_lpae_map() {
  507.520095 |   53)               |                __arm_lpae_map() {
  507.520096 |   53)               |                  __arm_lpae_map() {
  507.520096 |   53)   0.630 us    |                    __arm_lpae_map();
  507.520098 |   53)   1.860 us    |                  }
  507.520098 |   53)   3.210 us    |                }
  507.520099 |   53)   4.610 us    |              }
  507.520099 |   53)   5.860 us    |            }
  507.520100 |   53)   7.110 us    |          }
  507.520101 |   53) + 18.740 us   |        }
  507.520101 |   53) + 20.080 us   |      }
  507.520102 |   53) + 21.320 us   |    }
  507.520102 |   53) + 33.200 us   |  }

  783.039976 |   48)               |  iommu_dma_unmap_sg() {
  783.039977 |   48)               |    __iommu_dma_unmap() {
  783.039978 |   48)   0.720 us    |      iommu_get_dma_domain();
  783.039979 |   48)               |      iommu_unmap_fast() {
  783.039980 |   48)               |        __iommu_unmap() {
  783.039981 |   48)   0.740 us    |          iommu_pgsize.isra.14();
  783.039982 |   48)               |          arm_smmu_unmap() {
  783.039983 |   48)               |            arm_lpae_unmap() {
  783.039984 |   48)               |              __arm_lpae_unmap() {
  783.039985 |   48)               |                __arm_lpae_unmap() {
  783.039985 |   48)               |                  __arm_lpae_unmap() {
  783.039986 |   48)               |                    __arm_lpae_unmap() {
  783.039988 |   48)   0.730 us    |                      arm_smmu_tlb_inv_page_nosync();
  783.039989 |   48)   3.010 us    |                    }
  783.039990 |   48)   4.490 us    |                  }
  783.039991 |   48)   5.950 us    |                }
  783.039991 |   48)   7.460 us    |              }
  783.039992 |   48)   8.920 us    |            }
  783.039993 |   48) + 10.380 us   |          }
  783.039993 |   48) + 13.350 us   |        }
  783.039994 |   48) + 14.820 us   |      }
  783.039995 |   48)               |      arm_smmu_iotlb_sync() {
  783.039996 |   48)               |        arm_smmu_tlb_inv_range() {
  783.039996 |   48)               |          arm_smmu_cmdq_batch_add() {
  783.039997 |   48)   0.760 us    |            arm_smmu_cmdq_build_cmd();
  783.039999 |   48)   2.220 us    |          }
  783.039999 |   48)               |          arm_smmu_cmdq_issue_cmdlist() {
  783.040000 |   48)   0.530 us    |            arm_smmu_cmdq_build_cmd();
  783.040001 |   48)   0.530 us    |            __arm_smmu_cmdq_poll_set_valid_map.isra.40();
  783.040002 |   48)   0.540 us    |            __arm_smmu_cmdq_poll_set_valid_map.isra.40();
  783.040004 |   48)               |            ktime_get() {
  783.040004 |   48)   0.540 us    |              arch_counter_read();
  783.040005 |   48)   1.570 us    |            }
  783.040006 |   48)   6.880 us    |          }
  783.040007 |   48)   0.830 us    |          arm_smmu_atc_inv_domain.constprop.48();
  783.040008 |   48) + 12.910 us   |        }
  783.040009 |   48) + 14.370 us   |      }
  783.040010 |   48)               |      iommu_dma_free_iova() {
  783.040011 |   48)               |        free_iova_fast() {
  783.040011 |   48)               |          _raw_spin_lock_irqsave() {
  783.040012 |   48)   0.600 us    |            preempt_count_add();
  783.040013 |   48)   2.000 us    |          }
  783.040014 |   48)               |          _raw_spin_unlock_irqrestore() {
  783.040015 |   48)   0.820 us    |            preempt_count_sub();
  783.040016 |   48)   2.220 us    |          }
  783.040018 |   48)   6.200 us    |        }
  783.040019 |   48)   8.880 us    |      }
  783.040020 |   48) + 42.540 us   |    }
  783.040020 |   48) + 44.030 us   |  }

I am thinking several possible ways on decreasing or removing the latency of DMA map/unmap for every single DMA transfer. Meanwhile, "non-strict" as an existing option with possible safety issues, I won't discuss it in this mail.

1. provide bounce coherent buffers for streaming buffers. 
As the coherent buffers keep the status of mapping, we can remove the overhead of map and unmap for each single DMA operations. However, this solution requires memory copy between stream buffers and bounce buffers. Thus it will work only if copy is faster than map/unmap. Meanwhile, it will consume much more memory bandwidth.

2.make upper-layer kernel components aware of the pain of iommu map/unmap
upper-layer fs, mm, networks can somehow let the lower-layer drivers know the end of the life cycle of sg buffers. In zswap case, I have seen zswap always use the same 2 pages as the destination buffers to save compressed page, but the compressor driver still has to constantly map and unmap those same two pages for every single compression since zswap and zip drivers are working in two completely different software layers.

I am thinking some way as below, upper-layer kernel code can call:
sg_init_table(&sg...);
sg_mark_reusable(&sg....);
.... /* use the buffer many times */
....
sg_mark_stop_reuse(&sg);

After that, if low level drivers see "reusable" flag, it will realize the buffer can be used multiple times and will not do map/unmap every time. it means upper-layer components will further use the buffers and the same buffers will probably be given to lower-layer drivers for new DMA transfer later. When upper-layer code sets " stop_reuse", lower-layer driver will unmap the sg buffers, possibly by providing a unmap-callback to upper-layer components. For zswap case, I have seen the same buffers are always re-used and zip driver maps and unmaps it again and again. Shortly after the buffer is unmapped, it will be mapped in the next transmission, almost without any time gap between unmap and map. In case zswap can set the "reusable" flag, zip driver will save a lot of time.
Meanwhile, for the safety of buffers, lower-layer drivers need to make certain the buffers have already been unmapped in iommu before those buffers go back to buddy for other users.

I don't think letting upper-layer components aware of the overhead of map and unmap is elegant. But it might be something which deserves to be done for performance reason. Upper-layer software which is friendly to lower-layer driver might call sg_mark_reusable(&sg....). But it is not enforced, if upper-layer components don't call the API, the current lower-level driver won't be affected.

Please kindly give your comments on this proposal and provide your suggestions on any possible way to improve the performance of DMA stream APIs with iommu backend. I am glad to send a draft patch for "reusable" buffers if you think it is not bad.

Best Regards
Barry


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
